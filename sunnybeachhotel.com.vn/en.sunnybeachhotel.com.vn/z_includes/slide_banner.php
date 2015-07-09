
			<?
				$file= fopen("slideshow-data.xml", "w");
				$_xml ="<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"."<slideshow SPEED='5'>";
		    	
				$q=$db->select("tgp_gallery","hien_thi=1 AND cat = 28","order by id asc");
					while($r=$db->fetch($q))
					{
					$_xml .="<image src='/uploads/gal/fullbg_".$r['hinh']."'"."/>";
					}

				$_xml .="</slideshow>";
				fwrite($file, $_xml);
				fclose($file);
			?>
<embed allowScriptAccess="never"src="/slidebackground.swf" menu="false" quality="high" name="cxwebplayer" type="application/x-shockwave-flash" height=100% width=100% pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" border="0" align="middle" flashvars="playList=http://www.crewxp.com/media/cxwebplayerxml.xml&ShowPlaylist=1&ShowEQ=1&firstTrack=1&initVol=50" />