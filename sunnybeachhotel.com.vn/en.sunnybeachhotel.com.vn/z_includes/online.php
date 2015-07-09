<?php

function online()
{
	$rip = $_SERVER['REMOTE_ADDR'];
	$sd = time();
	$count = 1;
	$maxu = 1;

	$file1 = "online.log";
	$lines = file($file1);
	$line2 = "";

	foreach ($lines as $line_num => $line)
	{
		if($line_num == 0)
		{
			$maxu = $line;
		}
		else
		{
			$fp = strpos($line,'****');
			$nam = substr($line,0,$fp);
			$sp = strpos($line,'++++');
			$val = substr($line,$fp+4,$sp-($fp+4));
			$diff = $sd-$val;

			if($diff < 300 && $nam != $rip)
			{
				$count = $count+1;
				$line2 = $line2.$line;
			}
		}
	}

	$my = $rip."****".$sd."++++\n";
	if($count > $maxu)
	$maxu = $count;

	$open1 = fopen($file1, "w");
	fwrite($open1,"$maxu\n");
	fwrite($open1,"$line2");
	fwrite($open1,"$my");
	fclose($open1);
	//tang count va maxu len cho nhieu
	$count=$count;
	$maxu=$maxu+200;
	
	return $count;
}



?>

<div class="on" >	
			Online: <span class="soluongtruycap"><?= online() + 3;?></span>
</div>
<div class="online">
			<div class="truycap">
				Tổng:
			</div>
			<div class="dem">
			 <?php
				$gia_tri	= 0;
				$r			=	$db->select("tgp_online_daily","");
				while ($row = $db->fetch($r))
					$gia_tri += (int)$row["bo_dem"];
				$x =10 - strlen($gia_tri);
				for ($i = 1; $i <= $x; $i++)
				{
					$gia_tri = "0" . $gia_tri;
				}
				for ($i = 0; $i < strlen($gia_tri); $i++)
				{
					
					echo $gia_tri[$i]; 
				}
			?>
			</div>
	</div>