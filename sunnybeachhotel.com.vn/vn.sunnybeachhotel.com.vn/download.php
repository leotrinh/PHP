<?php
include("config.php");
$db		=	new	lg_mysql($host,$dbuser,$dbpass,$csdl);
include("func.php");

$secret = $_GET['secret'];
$id = $_GET['id'] + 0;
$hash = $_GET['hash'];


if ($secret != 'qweasdzxc' || !$id || $id < 0 || hashString($id) != $hash)
{
	header('Location: /');
	exit();
}


$q = $db->select('tgp_doc', 'id = '.$id);
if ($r = $db->fetch($q))
{
	$db->query('UPDATE tgp_doc SET luot_tai = luot_tai + 1 WHERE id = '.$id);
	header('Location: /uploads/doc/'.$r['file']);
	exit();
}
else
{
	header('Location: /');
	exit();
}
?>