<?php
include("config.php");
$db		=	new	lg_mysql($host,$dbuser,$dbpass,$csdl);
$query = $db->select("tgp_gallery","cat = 40 AND hinh <> 'no' AND hien_thi = 1","ORDER BY RAND()");
$images = array();
echo '<?xml version="1.0" encoding="utf-8"?>
<playlist version="1" xmlns="http://xspf.org/ns/0/">
	<trackList>
';
while ($row = $db->fetch($query))
{
	echo '
		<track>
			<location>/uploads/gal/gioi_thieu_'. $row['hinh'] .'</location>
		</track>
	';
}
echo '
	</tracklist>
</playlist>';
?>