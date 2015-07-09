<font size="2" face="Tahoma"><b>Website <img src="images/bl3.gif" border="0" /> Thêm Website</b></font>
<hr size="1" color="#cadadd" />
<?php
	include "templates/doc.php";
	if (empty($func)) $func = "";
	
	$txt_gia = '0';
?>
<center>
<?php
	$max_file_size	=	2048000;
	$up_dir			=	"../uploads/doc/";

	$OK = false;
	
	if ($func == "new")
	{
		
			// Process xong
			
				$id = $db->insert("tgp_doc","id,cat,ten,chu_thich,hien_thi,noi_bat,time,user","0,'".($txt_cat+0)."','".$db->escape($txt_ten)."','".$txt_chu_thich."','".($txt_hien_thi+0)."','".($txt_noi_bat+0)."','".time()."','".$thanh_vien["id"]."'");
				
				
				
				admin_load("Đã thêm vào CSDL","?act=doc_list&id=".($txt_cat+0));
	
	}
	else
	{
		$txt_ten		= "";
		$txt_chu_thich	= "";
		$txt_hien_thi	= 1;
		$txt_noi_bat	= 0;
	}
	
	if (!$OK)
		template_edit("?act=doc_new", "new", 0 , $txt_cat,$txt_ten,$txt_chu_thich,$txt_hien_thi,$txt_noi_bat,$error)
?>
</center>