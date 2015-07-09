	
<div class="left" style="width:880px;">				
<div class="noidung_sub" style="width:880px;">	
	 <div id="mcs4_container" style="width:880px;">
					<div class="customScrollBox">
						<div class="container" style="width:800px;">
							<div class="content" style="width:800px;">
							<div style="width:800px;">
								<!-- -->
								
                                <?php
		$id = $_GET["id"] + 0;
		$r2	=	$db->select("tgp_cms","id = '".$id."'");
		$row2 = $db->fetch($r2);
		if ($row2)
      	{	
          $db->update("tgp_cms","luot_xem",$row2["luot_xem"]+1,"id = '".$id."'");
          ?>	  
			
                <div class="ttx_ten" ><?=$row2["ten"]?></div>           
             	 <br />
                <div class="ttx_chuthich"><?=$row2["chu_thich"]?></div>
				 <br />
                <div class="ttx_noidung"><?=$row2["noi_dung"]?></div>
				
			
      <?php
      }
       if ($db->num_rows($r2) == 0)
      {
          echo "<h3>This article does not exist.</h3>";
      }
      ?>
	  
	 
	  <div class="ttx_new" />Tin tức liên quan:<br />
	
	  </div>
	 
    <div class="tk" >
        <?php
		$r = $db->select("tgp_cms","cat = '".$row2["cat"]."'  and hien_thi = 1 AND id <> ".$id,"order by time desc limit 5");
           
          while ($row = $db->fetch($r))
          {
			?>
			<div style="text-align:left; float:none; clear:both;">
			<a data-tooltip2="sticky_<?=$row["id"]?>" href="/khuyen-mai-xem/<?=$row["id"]?>/<?=(lg_string::get_link(lg_string::crop($row["ten"],20)))?>"><font color="#FAD378">&raquo; &nbsp;<?=lg_string::crop($row["ten"],30)?></font></a><a class="dang_ngay" style="font-style:italic;"> (<?=lg_date::vn_date($row["time"])?>)</a>
			</div>
			
			<?
          }
		?>							
		</div>    
                                
                                
                                <!-- -->	
                              </div>      
						</div>
				  </div>
				<div class="dragger_container"><div class="dragger"></div></div>
			</div>
		</div>					
	</div>
</div>
