	
<div class="left" style="width:880px;">				
<div class="noidung_sub" style="width:880px;">	
	 <div id="mcs4_container" style="width:880px;">
					<div class="customScrollBox">
						<div class="container" style="width:800px;">
							<div class="content" style="width:800px;">
							<div style="width:800px;">
								<?
			
									$q = $db->select("tgp_gallery_menu","hien_thi = 1 AND cat ='thu_vien_hinh'");
									while($r = $db->fetch($q))
									{
										$q1 = $db->select("tgp_gallery","hien_thi = 1 AND cat = '".$r["id"]."'","order by RAND() limit 1");
										while($r1 = $db->fetch($q1))
										{
									?>
										
											<div class="hinh1">
											<div class="hinh_slide1">
													<div style="background:url(/images/gallery2.png); width:197px; height:150px;"><a href="/thu-vien-hinh-xem/<?=$r["id"]?>"  ><img style="width:164px; height:110px; position:relative; left:-1px; top:20px;" src="/uploads/gal/thu_vien_hinh_<?=$r1["hinh"]?>"/></a></div>
													<li class="ten_hinh"><?=lg_string::crop($r["ten"],10)?></li>
											</div>
											</div>
												
									<?
										}
									}	
									?>		
                              </div>      
						</div>
				  </div>
				<div class="dragger_container"><div class="dragger"></div></div>
			</div>
		</div>					
	</div>
</div>
