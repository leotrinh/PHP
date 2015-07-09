<?php

@session_start();

include("config.php");

$db		=	new	lg_mysql($host,$dbuser,$dbpass,$csdl);

include("func.php");

$THANHVIEN["id"] = 0;

include("z_includes/dem_online.php");

if (empty($act)) $act = "home";

if ( !in_array($act, array(

		'home','gioi_thieu','lien_he','thu_vien_hinh_xem','thu_vien_hinh','dich_vu','nha_hang','bar_cafe','thue_xe','tour_bana','tour_tonghop','tour_sontra','he_thong_phong_xem','he_thong_phong','tin_tuc','tin_tuc_xem','khuyen_mai','khuyen_mai_xem','dat_phong'

	) ) ) 

{

	$act = "home";

}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<?php include "z_includes/_html_head.php";?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />



</head>



<body <?php if($act=="lien_he") {echo 'onload="initialize()"'; }?>>

<div style="position:absolute; left:0px; top:100px; width:100%; height:100% ; z-index:-1">

<?php include "z_includes/slide_banner.php";?>

</div>



 <div class="bg_top">

 	<div class="bg_top2">

            <div class="container">

                <div class="top">

                    <div class="logo">
                    <script type="text/javascript" src="/js/AC_RunActiveContent.js"></script>
					<script type="text/javascript" src="/js/AC_ActiveX.js"></script>
                    <script type="text/javascript">
                    AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','481','height','107','src','/logo_sunnybeach','quality','high','wmode','transparent','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','/logo_sunnybeach' ); //end AC code
                    </script>
                    </div>

                    <div class="menu">
                    
                    <?php include "z_includes/menu.php";?>
                    <div align="right">
                            <a href="http://test.sunnybeachhotel.com.vn/">
                            <img src="/images/viet.jpg">
                            </a>
                            <a href="http://en.sunnybeachhotel.com.vn/">
                            <img src="/images/anh.jpg">
                            </a>
                            </div> 


                    </div>

                </div>

                <div class="content_home">

                	<div class="left_top"></div><div class="right_top"></div>    

                		<div class="content2">

						   <?

                            if($act=="home")

                            {

                          ?>

                           <?php include "z_includes/gioi_thieu.php";?>

                          <?		

                            }

                            else

                            {

                           ?>

                             <?php include "z_modules/".$act.".php";?>

                           <?

                            }

                           ?>

                            </div>

                  <div class="left_bottom"></div><div class="right_bottom"></div>     

                  </div>

           </div>

      </div>     

  <div class="footer">

  	 <div class="container" style="width:980px;">

  		<div class="copyright">

        	<?=get_page("copyright")?>

        </div>

        <div class="newsletter_footer">

			<a class="abc">Nhận thông tin khuyến mãi định kỳ</a>

			<div class="newssletter">

				<form id="search" action="#" method="post" onsubmit="return sendthongtin(this);" name="frm">

					<input class="input_newssletter" type="text" name="txtEmail" value="Nhập địa chỉ email" onclick="if (this.value == 'Nhập địa chỉ email') this.value = '';" style="width:170px; margin-left:1em;"/>

					 <input type="submit" class="btn_go" name="btn" value="Go"/>

					</form>

			</div>
<div class="dem_online" style="margin-top:1em;">

            <?php include "z_includes/online.php";?>

             </div>
			

		</div>

      
        <div class="fc">

        	<div class="ht">

        		<?=get_page("ho_tro")?>
				<br/>
                <a href="http://goon.net.vn"><img src="/images/logo_goon.png" style="margin-top:-5px;"/></a>
            </div>

            

        </div>

      </div>  

  </div>



</div> 



</body>

</html>

