<div class="right">
<link type="text/css" href="css/tab_view.css" rel="stylesheet"  media="all" />
<script type="text/javascript" src="/js/tabview.js"></script>
<div id="TabView2" class="TabView"  style="border:1px; border-color:#fff;">



<!-- Pages -->
	<div style="height:335px; width:506px;" class="Pages" >


<!-- hinh anh -->
		<div style="width:506px; height:335px;  overflow:auto; overflow-x:hidden;" class="Page">
        <div class="slideshow">
				<?
                            $id = $_GET["id"] + 0;
                            $q	=	$db->select("tgp_cms","hien_thi=1 AND id = '".$id."'","");		
                             while($r1 = $db->fetch($q)) 
                
                              if(!empty($r1["photos"]))
                                {
                                    if ($r1["photos"] <> "")
                                    { 
                                        $x = explode(";",$r1["photos"]);
                                        for ($i = 0; $i < 4; $i++)
                                        {
                ?>				      																
                      <li style="list-style:none;"> 
                            <img alt="" src="/uploads/cms_photos/cmslon_<?=$x[$i]?>" width="500" height="330"/>   	
                      </li>	
                        
                <?						}
                                    }
                                }		
                ?> 

		</div>
        </div>
        
<!-- video -->
		<div style="width:506px; height:335px;   overflow:auto; overflow-x:hidden; "  class="Page">
        Video phòng đang được cập nhật...    
        </div>

	</div>
<!-- tabs -->
    <div style="width: 506;" class="Tabs">
    <a><img src="/images/icon_pic.png" />&nbsp;&nbsp;Hình ảnh</a>
    <a><img src="/images/icon_video.png" /> &nbsp;Video</a>
    </div>
</div>
<script type="text/javascript">tabview_initialize('TabView2');</script>
</div>

	
<div class="left" style="width:380px;">				
<div class="noidung_sub" style="margin-left:-3em;">		
	 <div id="mcs4_container" style="width:385px;">
					<div class="customScrollBox">
						<div class="container">
							<div class="content">

	<?php
		$id = $_GET["id"] + 0;
		$r2	=	$db->select("tgp_cms","id= '".$id."' and hien_thi=1","order by id asc");
		$row2 = $db->fetch($r2);
		
      	
     ?>	  
     <div style="width:370px; line-height:22px;">
                <div class="ttx_ten" ><?=$row2["ten"]?>: &nbsp;&nbsp;<?=$row2["chu_thich"]?></div> 
                <div style="text-align:left; margin-left:1.3em; margin-bottom:1em;"><a id="booking" class="button_dk"><img src="/images/bg_datphong.png" /></a></div>
                <li class="slow" id="booking2">		

					<?php include "z_includes/booking_detail.php";?>  
                
                </li>
                <div style="display:none"> <div id="dang_ky"> <?php include ('z_includes/dang_ky.php');?></div> </div>
                <div class="ttx_noidung"><?=$row2["noi_dung"]?></div>
                
     </div>           			
    
					</div>
				  </div>
				<div class="dragger_container"><div class="dragger"></div></div>
			</div>
		</div>					
	</div>
</div>
