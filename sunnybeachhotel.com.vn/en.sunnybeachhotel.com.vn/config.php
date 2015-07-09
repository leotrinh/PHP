<?php
	$thienbao	=	"_CORE";
	include	$thienbao."/index.php";
	
	$host = "localhost";
	$dbuser = "kssunny_en";
	$dbpass = "837245";
	$csdl = "kssunny_en";
	
	
	/*$host = "localhost";
	$dbuser = "phongtra_cms";
	$dbpass = "THNWcf]SU,#K";
	$csdl = "phongtra_cms";
	 */
	 if (!ini_get('register_globals')) 
		{
		@$_GET = $HTTP_GET_VARS;
		@$_POST = $HTTP_POST_VARS;
		@$_COOKIE = $HTTP_COOKIE_VARS;
		extract($_GET);
		extract($_POST);
		}
?>