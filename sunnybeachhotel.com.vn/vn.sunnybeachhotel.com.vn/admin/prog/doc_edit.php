<font size="2" face="Tahoma"><b>Website <img src="images/bl3.gif" border="0" /> Thêm Website</b></font>
<hr size="1" color="#cadadd" />
<?php
	include "templates/doc.php";
	if (empty($func)) $func = "";
?>
<center>
<?php
	//	Kiểm tra sự tồn tại của ID
	$id = $id + 0;
	$r	= $db->select("tgp_doc","id = '".$id."'");
	if ($db->num_rows($r) == 0)
		admin_load("Không tồn tại tài liệu này.","?act=doc_manager");
	
	$max_file_size	=	2048000;
	$up_dir			=	"../uploads/doc/";

	$OK = false;
	
	$txt_gia		= '0';
	
	if ($func == "update")
	{
		
				$db->query("update tgp_doc set cat = '".$db->escape($txt_cat)."', ten = '".$db->escape($txt_ten)."', chu_thich = '".$txt_chu_thich."', hien_thi = '".($txt_hien_thi+0)."' , noi_bat = '".($txt_noi_bat+0)."' where id = '".$id."'");
				
				admin_load("Đã cập nhật thành công.","?act=doc_list&id=".($txt_cat+0));
				
		
	}
	else
	{
		$r	= $db->select("tgp_doc","id = '".$id."'");
		while ($row = $db->fetch($r))
		{
			$txt_cat		= $row["cat"];
			$txt_ten		= $row["ten"];
			$txt_chu_thich	= $row["chu_thich"];
			$txt_hien_thi	= $row["hien_thi"];
			$txt_noi_bat	= $row["noi_bat"];
		}
	}
	
	if (!$OK)
		template_edit("?act=doc_edit","update",$id,$txt_cat,$txt_ten,$txt_chu_thich,$txt_hien_thi,$txt_noi_bat,$error)
?>
</center>