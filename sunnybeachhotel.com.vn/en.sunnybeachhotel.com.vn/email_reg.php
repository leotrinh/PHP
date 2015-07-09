<?php

@session_start();
include("config.php");
$db		=	new	lg_mysql($host,$dbuser,$dbpass,$csdl);
include("func.php");
$txt_email = lg_string::escape($txt_email);
$db->insert("tgp_email","email,time","'".$txtEmail."','".time()."'");

die("OK");

?>