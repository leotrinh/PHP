
<script src="/gallery/jquery.transform-0.6.2.min.js"></script>
<script src="/gallery/jquery.animate-shadow-min.js"></script>
<script src="/gallery/gallery.js"></script>
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="/gallery/gallery2.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/gallery/gallery.css" type="text/css" media="screen"/>
<div>
	<?
	$id = $_GET['id'] + 0;		
	$q = $db->select("tgp_gallery_menu","hien_thi = 1 AND id ='".$id."'");
	$r = $db->fetch($q);
	?>
<div class="title_sub" style="font-family:Arial; font-size:11px; padding-top:1.5em; padding-left:1.5em;"> <?=$r["ten"]?></div>				
<div class="gallery_3d">
<div class="gallery_4d" >
		
			
	   <div>
			<a id="pd_loading" href="#" class="pd_loading"></a>
		</div>

		<div id="pd_options_bar" class="pd_options_bar">
			<a href="#" class="shuffle">Shuffle</a>
			<a href="#" class="backdesk" style="display:none;">Back to Desk</a>
			<a href="#" class="viewall">View All</a>
		</div>
		<div id="pd_container" class="pd_container">
						<?
							
								$q1 = $db->select("tgp_gallery","hien_thi = 1 AND cat = '".$id."'","order by id asc");
								while($r1 = $db->fetch($q1))
								{
						?>	
								<div class="pd_photo">
									<div class="pd_hold">
										<a href="/uploads/gal/<?=$r1["hinh"]?>"   rel="example_group"><img src="/uploads/gal/gallery_3d<?=$r1["hinh"]?>" style="width:100px; height:100px;" /></a>
									</div>
									<span class="delete"></span>
								</div>
						<?
								}
							
						?>	
			
		</div>
			
			
			
			
</div>			
</div>
</div>