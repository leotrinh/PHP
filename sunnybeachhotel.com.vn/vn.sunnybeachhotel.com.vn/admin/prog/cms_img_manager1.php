<?php
$id = $id +0;
?>
<font size="2" face="Tahoma"><b>Tin tức <img src="images/bl3.gif" border="0" /> Quản lý Hình tin tức</b></font>
<hr size="1" color="#cadadd" />
<div class="function">
	<a href="?act=gallery_new&cmsi=1"><img src="images/add_new.gif" align="absmiddle" border="0" /></a> <a href="?act=gallery_new&cmsi=1">Thêm hình mới</a>
	<div class="search_cat"><? show_cms(); ?></div>
</div>
<center>
<?php
	if ($func == "del")
	{
		for ($i = 0; $i < count($tik); $i++)
		{
			$g = $db->select("tgp_cms_img", "id = '".$tik[$i]."'");
			if ($gr = $db->fetch($g)) $gid = $gr["gal_id"];
			
			$db->delete("tgp_cms_img","id = '".$tik[$i]."'");
			$db->delete("tgp_gallery","id = '".$gid."'");
		}
		admin_load("Đã xóa các hình đã chọn.","?act=cms_img_manager");
		die();
	}
?>
<form action="?act=cms_img_manager" method="post" onsubmit="return confirm('Bạn có chắc chắn không ?');">
<input type="hidden" name="func" value="del" />
<input type="hidden" name="id" value="<?=$id?>" />
<table class="tb_table" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr class="tb_head">
	<td>STT</td>
	<td>Tên bản tin</td>
	<td>Tên hình</td>
    <td>Hiển thị</td>
	<td>Chỉnh sửa</td>
	<td>Xóa</td>
</tr>
<?php
if(empty($id))
{
$r		=	$db->select("tgp_cms_img","","order by cms_id desc");	
}
else
{
$r		=	$db->select("tgp_cms_img","cms_id='".$id."'","order by cms_id desc");	
}
while ($row = $db->fetch($r))
{
	$count++;
?>
<tr class="tb_content">
	<td><?=$count?></td>
	<?php
	$tnq = $db->select("tgp_cms","id = ".$row["cms_id"],"");
	if ($rtin = $db->fetch($tnq)) $ten_tin = $rtin["ten"];
	?>
	<td><?=$ten_tin?></td>
    <?php
	$tnh = $db->select("tgp_gallery","id = ".$row["gal_id"],"");
	if ($rhih = $db->fetch($tnh)) $ten_hinh = $rhih["ten"];
	?>
	<td><?=$ten_hinh?></td>
    <?php
	$tnh = $db->select("tgp_gallery","id = ".$row["gal_id"],"");
	if ($rhih = $db->fetch($tnh)) $hthi = $rhih["hien_thi"];
	?>
    <td><?=$hthi==1?"<img src=\"images/true.gif\" />":"<img src=\"images/false.gif\" />"?></td>
	<td><a href="?act=gallery_edit&cmsi=1&id=<?=$row["gal_id"]?>">Sửa</a></td>
	<td><input name="tik[]" type="checkbox" value="<?=$row["id"]?>" /></td>
</tr>
<?
}
?>
<tr class="tb_foot">
	<td colspan="5" style="text-align:left;">&nbsp;</td>
	<td><input type="submit" value="Xóa" class="button_2" style="width:80%;" /></td>
</tr>
</table>
</table>
</form>
</center>
<div class="function">
	<a href="?act=gallery_new&cmsi=1"><img src="images/add_new.gif" align="absmiddle" border="0" /></a> <a href="?act=gallery_new&cmsi=1">Thêm hình mới</a>
</div>
<?php
function	show_cms()
{
	global $db,$id;
	
	$kq = $db->query("select DISTINCT(a.cms_id) from tgp_cms_img a");
	while ($rkq = $db->fetch($kq))
		$cmsID = $rkq["cms_id"];
	
	$r2 = $db->select("tgp_cms_menu","hien_thi = 1","order by thu_tu asc");
	?>
	<select name="txt_cms" class="inputbox" style="width:50%;"  onChange="var val=this.options[this.selectedIndex].value; Forward('?act=cms_img_manager&cmsi=$id');options[this.selectedIndex].selected=true;"">
    	<option value="-1">-</option>
	<?php
	while ($row2 = $db->fetch($r2))
	{
		echo "<optgroup style='color:#000;' label='".$row2["ten"]."'>";
		$rd = $db->query("select distinct time from tgp_cms where cat = '".$row2["id"]."' and hien_thi = 1 order by time DESC");
		while ($rdd = $db->fetch($rd))
		{
			echo "<optgroup style='color:#222;' label='&ensp;&ensp;".date("d/m/Y",$rdd["time"])."'>";
			$r	=	$db->select("tgp_cms","cat = '".$row2["id"]."' AND hien_thi = 1 AND time = ".$rdd["time"],"order by noi_bat");
			while ($row = $db->fetch($r))
			{
				echo "<option style='color:#444;' value='".$row["id"]."'";
				if ($cmsID == $row["id"]) echo " selected ";
				echo ">".$row["ten"]."</option>";
			}
			echo "</optgroup>";
		}
		echo "</optgroup>";
	}
	?>
	</select>
	<?php
}
?>