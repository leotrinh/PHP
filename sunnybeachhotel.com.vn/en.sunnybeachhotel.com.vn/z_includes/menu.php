







<ul  id="nav">



    <li class="<?=$act=='home'?'active':''?>"><a href="/">Home</a></li>



    <?php



    $r_sp = $db->select("tgp_cms_menu","cat = 'he_thong_phong'","");



    $r = $db->fetch($r_sp);



      ?>



    <li class="<?=($act=='he_thong_phong' || $act=='he_thong_phong_xem')?'active':''?>"><a href="/he-thong-phong/<?=$r["id"]?>-<?=$r["ten"]?>">Rooms</a></li>

	<?php



    $r_sp = $db->select("tgp_cms_menu","cat = 'he_thong_phong'","");



    $r = $db->fetch($r_sp);



      ?>

    <li class="<?=$act=='dat_phong'?'active':''?>"><a href="/dat-phong/">Booking</a></li>

    <li class="<?=$act=='dich_vu'?'active':''?>"><a href="/dich-vu/">Services</a></li>





	<?php



    $r_sp = $db->select("tgp_cms_menu","cat = 'tin_tuc'","");



    $r = $db->fetch($r_sp);



      ?>



    <li class="<?=($act=='tin_tuc' || $act=='tin_tuc_xem')?'active':''?>"><a href="/tin-tuc/<?=$r["id"]?>-<?=$r["ten"]?>">News & Event</a></li>


	<?php



    $r_sp = $db->select("tgp_cms_menu","cat = 'khuyen_mai'","");



    $r = $db->fetch($r_sp);



      ?>



    <li class="<?=($act=='khuyen_mai' || $act=='khuyen_mai_xem')?'active':''?>"><a href="/khuyen-mai/<?=$r["id"]?>-<?=$r["ten"]?>">Promotions</a></li>

	
    <li class="<?=$act=='lien_he'?'active':''?>"><a href="/lien-he/">Contact</a></li>



</ul>


 



    



    