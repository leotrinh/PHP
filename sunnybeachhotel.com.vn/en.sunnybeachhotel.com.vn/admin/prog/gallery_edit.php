<font size="2" face="Tahoma"><b>Tin tức <img src="images/bl3.gif" border="0" /> Sửa bài viết</b></font>
<hr size="1" color="#cadadd" />
<?php
	include "templates/gallery.php";
	if (empty($func)) $func = "";
?>
<center>
<?php
	//	Kiểm tra sự tồn tại của ID
	$id = $id + 0;
	$r	= $db->select("tgp_gallery","id = '".$id."'");
	if ($db->num_rows($r) == 0)
		admin_load("Không tồn tại bài viết này.","?act=gallery_manager");
	
	$max_file_size	=	2048000;
	$up_dir			=	"../uploads/gal/";

	$OK = false;

	if ($func == "update")
	{
		if (empty($txt_ten))
			$error = "Vui lòng nhập tên bài viết.";
		else
		{
			// kiểm tra file uploads.
			$file_type = $HTTP_POST_FILES['txt_hinh']['type'];
			$file_name = $HTTP_POST_FILES['txt_hinh']['name'];
			$file_size = $HTTP_POST_FILES['txt_hinh']['size'];
			switch ($file_type)
			{
				case "image/pjpeg"	: $file_type = "jpg"; break;
				case "image/jpeg"	: $file_type = "jpg"; break;
				case "image/gif" 	: $file_type = "gif"; break;
				case "image/x-png" 	: $file_type = "png"; break;
				case "image/png" 	: $file_type = "png"; break;
				default : $file_type = "unk"; break;
			}
			$file_full_name = "tmp_".time().".".$file_type;
			if ( ($file_size > 0) && ($file_size <= $max_file_size) )
				if ($file_type != "unk")
						if ( @move_uploaded_file($HTTP_POST_FILES['txt_hinh']['tmp_name'],$up_dir.$file_full_name) )
						{
							$OK = true;
							$hinh = true;
						}
						else
							$error = "Không thể upload hình ảnh.";
				else
				{
					$error = "Sai định dạng file - Không thể upload hình ảnh.";
				}
			else
			{
				if ($file_size == 0)
				{
					$OK		= true;
					$hinh	= false;
				}
				else
					$error = "Hình của bạn chọn vượt quá kích thước cho phép.";
			}
			// Process xong
			if ($OK)
			{
				$db->query("update tgp_gallery set cat = '".$db->escape($txt_cat)."', ten = '".$db->escape($txt_ten)."', chu_thich = '".$txt_chu_thich."', hien_thi = '".($txt_hien_thi+0)."', noi_bat = '".($txt_noi_bat+0)."', link = '".$db->escape($txt_link)."' where id = '".$id."'");
				if ($hinh)
				{
					
					$txt_hinh_2	= "fullbg_".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_2,"w=1300&h=800&zc=1");
						$txt_hinh_5	= "gallery_3d".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_5,"w=250&h=250&zc=1");
					$txt_hinh_3	= "thu_vien_hinh_".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_3,"w=164&h=100&zc=1");
					
					$txt_hinh_4	= "gioi_thieu_".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_4,"w=500&h=330&zc=1");
					
					$txt_hinh_1	= $id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_1,"w=1500&h=1500");
					$db->update("tgp_gallery","hinh",$txt_hinh_1,"id = '".$id."'");
				}
				
				admin_load("Đã thêm Hình ảnh vào CSDL","?act=gallery_list&id=".($txt_cat+0));
			}			
		}
	}
	else
	{
		$r	= $db->select("tgp_gallery","id = '".$id."'");
		while ($row = $db->fetch($r))
		{
			$txt_cat		= $row["cat"];
			$txt_ten		= $row["ten"];
			$txt_chu_thich	= $row["chu_thich"];
			$txt_noi_dung	= $row["noi_dung"];
			$txt_hien_thi	= $row["hien_thi"];
			$txt_noi_bat	= $row["noi_bat"];
			$txt_link	= $row["link"];
		}
	}
	
	if (!$OK)
		template_edit("?act=gallery_edit","update",$id,$txt_cat,$txt_ten,$txt_chu_thich,$txt_hinh,$txt_hien_thi,$txt_noi_bat,$txt_link,$error)
?>
</center>