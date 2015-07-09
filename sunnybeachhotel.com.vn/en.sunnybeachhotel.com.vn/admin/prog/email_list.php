<font size="2" face="Tahoma"><b>Danh sách emails</b></font>
<hr size="1" color="#cadadd" />
<center>
<?php
$txtEmail = "";
$r		=	$db->select("tgp_email","","order by email asc");
while ($row = $db->fetch($r))
{
$txtEmail .= $row["email"].";";
}
?>
<table border="0" cellpadding="2" cellspacing="2" width="640">
<tr>
<td width="35%" align="right" valign="top">Email : </td>
<td width="65%" align="left">
<textarea name="txtEmail" class="inputbox" style="width:95%" rows="8"><?=$txtEmail?></textarea>
</td>
</tr>
</table>
</center>