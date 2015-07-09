<link type="text/css" href="css/tab_view2.css" rel="stylesheet"  media="all" />
<script type="text/javascript" src="/js/tabview.js"></script>
<div id="TabView2" class="TabView"  style="border:1px; border-color:#fff;">


<!-- tabs -->
    <div style="width: 950;" class="Tabs">
    <a><img src="/images/icon_tin.png" />&nbsp;&nbsp;NEWS & EVENTS</a>
    <a><img src="/images/icon_comment.png" /> &nbsp;COMMENT</a>
    <a><img src="/images/icon_pic.png" /> &nbsp;HOTEL'S PHOTOS</a>
    </div>

<!-- Pages -->
	<div style="height:375px; width:930px;" class="Pages" >


<!-- tin tuc -->
		<div style="width:930px; height:375px;  overflow:auto; overflow-x:hidden;" class="Page">
						<?
                                $id = $_GET["id"] + 0;	
                                $a = $db->select("tgp_cms_menu","hien_thi=1  and id = '".$id."'","");
                                $r = $db->fetch($a);
                        ?>						
                            <div class="noidung_gioithieu" id="scoll">
                                <div class="noidung">
                                <?php
                            
                                $page		=	$page + 0;
                                $perpage	=	5;
                                $r_all		=	$db->select("tgp_cms","hien_thi=1 AND cat = '".$id."'","");
                                $sum		=	$db->num_rows($r_all); 
                                $pages		=	($sum-($sum%$perpage))/$perpage;
                                    if ($sum % $perpage <> 0 )
                                        {
                                            $pages = $pages + 1;
                                        }
                                $page		=	($page==0)?1:(($page>$pages)?$pages:$page);
                                $min 		= 	abs($page-1) * $perpage;
                                $max 		= 	$perpage;
                                $q	=	$db->select("tgp_cms","hien_thi=1 AND cat = '".$id."'","ORDER BY time DESC LIMIT ".$min.", ".$max);
                                if($db->num_rows($q) != 0)
                                {
                                    
                                    while($r2=$db->fetch($q))
                                    {
                                ?>
                                            <li style="margin-top:2em; margin-left:0.5em; height:110px; float:left; list-style:none;">
                                                <div style="float:left;">
                                                    <a  href="/tin-tuc-xem/<?=$r2["id"]?>"><img src="/uploads/cms/cms_<?=$r2["hinh"]?>" style="padding: 3px; margin-left:7px; margin-right:7px; border:1px solid #FAD378;"/></a>
                                                </div>
                                                <div style="float:left; width:290px; text-align: justify;">
                                                    <div class="ten_tintuc" style="margin-bottom:0.3em;  font-weight:bold;"><a  href="/tin-tuc-xem/<?=$r2["id"]?>"><font color="#FFCC66"><?=lg_string::crop($r2["ten"],10)?></font></a></div>
                                                    <div class="chuthich_tintuc"><font color="EED390"><?=lg_string::crop($r2["chu_thich"],50)?></font></div>
                                                    <a href="/tin-tuc-xem/<?=$r2["id"]?>" class="next" ><font color="#FFFFCC"> &raquo; &nbsp;Read more</font></a>
                                                </div>
                                                    
                                            </li>
                                <?
                                            
                                }
                                            showPageNavigation($page, $pages, '/tin-tuc/'.$id.'/');
                                }
                                else 
                                {
                                ?>
                                
                                    <div style="text-align:center; font-size:15px; color:#000;" >Data is updated ...</div>	
                                <?
                                }	
                                ?>	
                                
                                </div>
                            </div>        
    </div>
        
<!-- loi khach hang -->
		<div style="width:930px; height:375px;   overflow:auto; overflow-x:hidden; "  class="Page">
       Content is being updated ...
        </div>
        
        
<!-- Hinh anh ks -->
		<div style="width:930px; height:375px;   overflow:auto; overflow-x:hidden; "  class="Page">
        					
              <!-- start-->
                            
                            	
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

                            
          <!-- end-->
        </div>

	</div>
</div>
<script type="text/javascript">tabview_initialize('TabView2');</script>