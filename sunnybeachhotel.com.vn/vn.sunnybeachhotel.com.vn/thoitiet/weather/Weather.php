<?php
error_reporting(0);
$Link = array();
$Link[] = 'xml/HCM.xml';
$Link[] = 'xml/Sonla.xml';
$Link[] = 'xml/Haiphong.xml';
$Link[] = 'xml/Hanoi.xml';
$Link[] = 'xml/Vinh.xml';
$Link[] = 'xml/Danang.xml';
$Link[] = 'xml/Nhatrang.xml';
$Link[] = 'xml/Pleicu.xml';

$Link2 = array();
$Link2[] = 'http://vnexpress.net/ListFile/Weather/HCM.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Sonla.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Haiphong.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Hanoi.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Vinh.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Danang.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Nhatrang.xml';
$Link2[] = 'http://vnexpress.net/ListFile/Weather/Pleicu.xml';

$id= isset($_GET['id'])?intval($_GET['id']):0;
$content = file_get_contents($Link2[$id]);
if($content=='')
{
	$content = file_get_contents($Link[$id]);
}
$p = xml_parser_create();
xml_parse_into_struct($p, $content, $xml);
xml_parser_free($p);
?>
<div style="float:left; margin:0px; padding:0px; position:relative;">
<div style="float:left; width:44px;">
<img src="/images/mua/<?php echo $xml[1]['value']; ?>" style=" width:40px; height:30px;" />
</div>
<div style="float:left; width:86px; text-align:center; height:30px;">
<img src="/images/thoitiet/<?php echo $xml[3]['value']; ?>"  style="width:12px; height:12px; position:relative; top:8px;"/>
<img src="/images/thoitiet/<?php echo $xml[5]['value']; ?>"  style="width:12px; height:12px; position:relative; top:8px;"/>
<img src="/images/thoitiet/c.gif" style="width:12px; height:12px; position:relative; top:8px;" />
</div>
<span style="color:#F6DE91; float:left; width:140px;"><?php echo $xml[13]['value']; ?></span>

