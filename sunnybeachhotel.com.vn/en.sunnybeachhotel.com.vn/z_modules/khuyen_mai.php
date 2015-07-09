<div style="text-align:left; margin-left: 1em; padding-top:2em;">
 <a><img src="/images/icon_tin.png" style="text-align:left;"/>&nbsp;&nbsp;PROMOTION</a>

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
                                            <div style="margin-top:2em; margin-left:1.5em;">
                                                <div style="float:left;">
                                                    <a  href="/khuyen-mai-xem/<?=$r2["id"]?>"><img src="/uploads/cms/cms_<?=$r2["hinh"]?>" style="padding: 3px; margin-left:7px; margin-right:7px; border:1px solid #FAD378;"/></a>
                                                </div>
                                                <div style="float:left; width:290px; text-align: justify;">
                                                    <div class="ten_tintuc" style="margin-bottom:0.3em;  font-weight:bold;"><a  href="/khuyen-mai-xem/<?=$r2["id"]?>"><font color="#FFCC66"><?=lg_string::crop($r2["ten"],10)?></font></a></div>
                                                    <div class="chuthich_tintuc"><font color="EED390"><?=lg_string::crop($r2["chu_thich"],50)?></font></div>
                                                    <a href="/khuyen-mai-xem/<?=$r2["id"]?>" class="next" ><font color="#FFFFCC"> &raquo; &nbsp;Read more</font></a>
                                                </div>
                                                    
                                            </div>
                                <?
                                            
                                }
                                            showPageNavigation($page, $pages, '/khuyen-mai/'.$id.'/');
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