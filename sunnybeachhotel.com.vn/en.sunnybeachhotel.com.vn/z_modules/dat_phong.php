	
<div class="left">				
<div class="title_sub" style="font-size:12px; font-family:arial; margin-bottom:1em;"> Booking online:</div>
<div class="noidung_sub" >	
                            	
								<?php
                                    
                                    $r2	=	$db->select("tgp_page","alias like 'nd_dat_phong'","");
                                    $row2 = $db->fetch($r2);
                                    if ($row2)
                                    {	   
                                 ?>	    
                                            <div class="ttx_noidung" style="text-align:left; color:#EED390;" ><?=$row2["noi_dung"]?></div>					
                                 <?php
                                     }
                                  
                                
                                 else
                                  {
                                  ?>
                                  <div style="text-align:center; color:#ff0000; text-transform:uppercase; font-size:15px"> Information is being updated</div>
                                  <?
                                  }
                                  ?>
								<?php include "z_includes/booking_all.php";?>  			
	</div>
</div>
<div class="right">
							 <?php include "z_includes/slide_introduce.php";?>
</div>
