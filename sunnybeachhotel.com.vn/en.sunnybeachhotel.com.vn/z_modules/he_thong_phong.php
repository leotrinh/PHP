<div class="right">
<style type="text/css">
#accordion-slider-wrap{
 background: #FFF url('slider-shadow.png') bottom center no-repeat;
 padding: 0;
 width:500px;
}
ul#accordion-slider{
 margin: 0;
 padding: 0;
 list-style: none;
 position: relative;
}
ul#accordion-slider li{
 display: block;  
 overflow: hidden;  
 padding: 0;
 float: left;
 width: 170px;
 height: 330px;

}
</style>
<div id="accordion-slider-wrap">
<ul id="accordion-slider">
  
<?
			$id = $_GET["id"] + 0;
		  	$q	=	$db->select("tgp_cms","hien_thi=1 AND cat = '".$id."'","order by id asc limit 3");		
			 while($r1 = $db->fetch($q)) 
			
	    	{
?>				      																
	  <li> 
            <img alt="" src="/uploads/cms/thumb_<?=$r1['hinh']?>" />
      </li>	
<?
			}		
?> 
</ul>
</div>
</div>

	
<div class="left">				
<div class="noidung_sub" >		
	 <div id="mcs4_container">
					<div class="customScrollBox">
						<div class="container">
							<div class="content">

	<?php
		$id = $_GET["id"] + 0;
		$r2	=	$db->select("tgp_cms","cat= '".$id."' and hien_thi=1","order by id asc");
		while($row2 = $db->fetch($r2))
		
      	 {	
     ?>	  
     <div style="width:370px; line-height:27px;">
                <div class="ttx_ten" ><?=$row2["ten"]?>: &nbsp;&nbsp;<?=$row2["chu_thich"]?></div> 
                <div class="ttx_noidung"><?=lg_string::crop($row2["noi_dung"],40)?></div>
                <div class="ttx_chitet"><a href="/he-thong-phong-xem/<?=$row2['id']?>">Read more <img src="/images/icon_next_p.png" /></a></div>
     </div>           			
     <?php
     	 }
  	?>
					</div>
				  </div>
				<div class="dragger_container"><div class="dragger"></div></div>
			</div>
		</div>					
	</div>
</div>
