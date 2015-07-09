<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Sunybeach hotel </title>

<meta name="author" content="" />

<meta name="keywords" content="" />

<meta name="description" content="" />

<meta name="copyright" content="" />

<meta http-equiv="expires" content="0" />

<meta name="resource-type" content="document" />

<meta name="distribution" content="global" />

<meta name="robots" content="index, follow" />

<meta name="revisit-after" content="1 days" />

<meta name="rating" content="general" />

<link href="/css/css.php" rel="stylesheet" type="text/css" />

<link href="/js/transform/jqtransform.css" rel="stylesheet" type="text/css" />



<script type="text/javascript" src="/js/jquery.1.5.2.js"></script>

<script type="text/javascript" src="/js/cufon-yui.js"></script>

<script type="text/javascript" src="/js/swfobject.js"></script>

<script type="text/javascript" src="/js/init.js"></script>

<script type="text/javascript" src="/js/AC_ActiveX.js"></script>

<script type="text/javascript" src="/js/AC_RunActiveContent.js"></script>

<script src="/js/jquery.1.8.js"></script>

<!-------fb------------------->

<link rel="stylesheet" type="text/css" href="/fancybox/jquery.fancybox-1.3.4.css" media="screen" />	

<script type="text/javascript" src="/fancybox/jquery.fancybox-1.3.4.pack.js"></script>



<link href="/jquery/themes/smoothness/jquery-ui-1.7.1.custom.css" type="text/css" rel="stylesheet"/>

<script type="text/javascript" src="/js/transform/jquery.jqtransform.js" ></script>

<script language="javascript">

				$(function(){

					$('form.formabc').jqTransform({imgPath:'jqtransformplugin/img/'});

				});

</script>	

<script type="text/javascript" src="/jquery/themes/smoothness/ui/ui.core.js"></script>

<script type="text/javascript" src="/jquery/themes/smoothness/ui.datepicker.js"></script>



<script language="javascript">

function CalcKeyCode(aChar) {

  var character = aChar.substring(0,1);

  var code = aChar.charCodeAt(0);

  return code;

}

function checkNumber(val) {

  var strPass = val.value;

  var strLength = strPass.length;

  var lchar = val.value.charAt((strLength) - 1);

  var cCode = CalcKeyCode(lchar);

  if (cCode < 48 || cCode > 57 ) {

    var myNumber = val.value.substring(0, (strLength) - 1);

    val.value = myNumber;

  }

  return false;

}

$(document).ready(function(){

		$('#DPngayden').datepicker();

		$('#from_calendar').click(function(){		

				$('#DPngayden').focus();

			});																				

	});

$(document).ready(function(){

		$('#DPngaydi').datepicker();

		$('#to_calendar').click(function(){		

				$('#DPngaydi').focus();

			});																				

	});	

</script>





<?

if($act=="thu_vien_hinh")

{

	?>

    <link href="/js/scoll/scoll_gallery.css" rel="stylesheet" type="text/css" />

    <?

}

else

{

?>

	<link href="/js/scoll/scoll.css" rel="stylesheet" type="text/css" />

<?

}

?>

<?

if($act=="dat_phong" or $act=="lien_he")

{}

else

{

	?>

<script src="/js/scoll/jquery-scroll.js"></script>

<script type="text/javascript" src="/js/jquery-ui.min.1.8.js"></script>

<script type="text/javascript" src="/js/scoll/jquery.mCustomScrollbar.js"></script>

<script type="text/javascript" src="/js/scoll/jquery.easing.1.3.js"></script>

<script type="text/javascript" src="/js/scoll/jquery.mousewheel.min.js"></script>

<noscript>

	<style type="text/css">

		#mcs4_container .customScrollBox{overflow:auto;}

		#mcs4_container .dragger_container{display:none;}

	</style>

</noscript>



<script>

$(window).load(function() {

	mCustomScrollbars();

});



function mCustomScrollbars(){

	

	$("#mcs4_container").mCustomScrollbar("vertical",200,"easeOutCirc",1.25,"fixed","yes","no",0); 

	

}

function LoadNewContent(id,file){

	$("#"+id+" .customScrollBox .content").load(file,function(){

		mCustomScrollbars();

	});

}

</script>

<? } 

if($act=="he_thong_phong")

{

?>

<script type="text/javascript" language="javascript" src="/js/jquery.kwicks-1.5.1.pack.js"></script>

<script type="text/javascript">

	$().ready(function() {  

	$('#accordion-slider').kwicks({  

		max : 420,  

		spacing : 2

	});  

});

</script>

<? }if($act=="he_thong_phong_xem")

{

?>

<script type="text/javascript" src="/js/jquery.cycle.all.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {

    $('.slideshow').cycle({

		fx: 'fade' 

		

		});

});

</script>

<? }

?>

