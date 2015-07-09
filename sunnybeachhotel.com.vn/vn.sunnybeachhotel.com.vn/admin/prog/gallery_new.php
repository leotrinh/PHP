<font size="2" face="Tahoma"><b>Thư viện hình ảnh <img src="images/bl3.gif" border="0" /> Thêm Hình ảnh</b></font>
<hr size="1" color="#cadadd" />
<?php
	include "templates/gallery.php";
	if (empty($func)) $func = "";
?>
<center>
<?php
	$max_file_size	=	10000000;
	$up_dir			=	"../uploads/gal/";

	$OK = false;
	
	if ($func == "new")
	{
		if (empty($txt_ten))
			$error = "Vui lòng nhập tên Hình ảnh.";
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
				$id = $db->insert("tgp_gallery","id,cat,ten,chu_thich,hien_thi,noi_bat,link,time,user","0,'".($txt_cat+0)."','".$db->escape($txt_ten)."','".$txt_chu_thich."','".($txt_hien_thi+0)."','".($txt_noi_bat+0)."','".$db->escape($txt_link)."','".time()."','".$thanh_vien["id"]."'");
				
				if ($hinh)
				{
					
					$txt_hinh_2	= "fullbg_".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_2,"w=1300&h=800&zc=1");
					
					$txt_hinh_3	= "thu_vien_hinh_".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_3,"w=164&h=100&zc=1");
					$txt_hinh_5	= "gallery_3d".$id.".".$file_type;
					img_resize($up_dir.$file_full_name,$up_dir.$txt_hinh_5,"w=250&h=250&zc=1");
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
		$txt_ten		= "";
		$txt_chu_thich	= "";
		$txt_hinh_note	= "";
		$txt_noi_dung	= "";
		$txt_hien_thi	= 1;
		$txt_link	= "";
	}
	
	if (!$OK)
		template_edit("?act=gallery_new", "new", 0 , $txt_cat,$txt_ten,$txt_chu_thich,$txt_hinh,$txt_hien_thi,$txt_noi_bat,$txt_link,$error)
?>
</center>