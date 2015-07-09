	
<div class="left">				
<div class="title_sub" style="font-family:arial; font-size:12px; margin-bottom:2em;"> Bar - cafe</div>
<div class="noidung_sub" >	
	 <div id="mcs4_container">
					<div class="customScrollBox">
						<div class="container">
							<div class="content" >

								<?php
                                    
                                    $r2	=	$db->select("tgp_page","alias like 'bar_cafe'","");
                                    $row2 = $db->fetch($r2);
                                    if ($row2)
                                    {	   
                                 ?>	    
                                            <div class="ttx_noidung" style="text-align:left; color:#EED390;" ><?=$row2["noi_dung"]?></div>	
                                            <div style="text-align:right; margin-top:2em;"><a  href="/dich-vu/"><font color="#FFCC66">&raquo; quay lại trang dịch vụ</font></a></div>
                                 <?php
                                     }
                                  
                                
                                 else
                                  {
                                  ?>
                                  <div style="text-align:center; color:#ff0000; text-transform:uppercase; font-size:15px"> Thông tin đang được update</div>
                                  <?
                                  }
                                  ?>
						</div>
				  </div>
				<div class="dragger_container"><div class="dragger"></div></div>
			</div>
		</div>					
	</div>
</div>
<div class="right">
							 <?php include "z_includes/slide_cafe.php";?>
</div>
