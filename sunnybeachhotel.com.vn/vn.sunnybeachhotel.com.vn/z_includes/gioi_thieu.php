<div class="right">
							 <?php include "z_includes/slide_introduce.php";?>
</div>	
<div class="left">				
<div class="noidung_sub" >	
	 <div id="mcs4_container">
					<div class="customScrollBox">
						<div class="container">
							<div class="content">

								<?php
                                    
                                    $r2	=	$db->select("tgp_page","alias like 'gioi_thieu'","");
                                    $row2 = $db->fetch($r2);
                                    if ($row2)
                                    {	   
                                 ?>	    
                                            <div class="ttx_noidung"><?=$row2["noi_dung"]?></div>					
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

