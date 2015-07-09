<?php

function showPageNavigation($currentPage, $maxPage, $path = '') {
	if ($maxPage <= 1)
	{
		return;
	}
	
	
	$suffix = '/vien-nghien-cuu-dao-tao-quan-tri-gami.html';
	
	$nav = array(
		// bao nhiêu trang bên trái currentPage
		'left'	=>	3,
		// bao nhiêu trang bên phải currentPage
		'right'	=>	3,
	);
	
	// nếu maxPage < currentPage thì cho currentPage = maxPage
	if ($maxPage < $currentPage) {
		$currentPage = $maxPage;
	}
	
	// số trang hiển thị
	$max = $nav['left'] + $nav['right'];
	
	// phân tích cách hiển thị
	if ($max >= $maxPage) {
		$start = 1;
		$end = $maxPage;
	}
	elseif ($currentPage - $nav['left'] <= 0) {
		$start = 1;
		$end = $max + 1;
	}
	elseif (($right = $maxPage - ($currentPage + $nav['right'])) <= 0) {
		$start = $maxPage - $max;
		$end = $maxPage;
	}
	else {
		$start = $currentPage - $nav['left'];
		if ($start == 2) {
			$start = 1;
		}
		
		$end = $start + $max;
		if ($end == $maxPage - 1) {
			++$end;
		}
	}
	
	$navig = '<div class="navigation"><span class="current_page_item">Trang <b>'.$currentPage.'</b> trên <b>'.$maxPage.'</b></span>';
	if ($currentPage >= 2) {
		if ($currentPage >= $nav['left']) {
			if ($currentPage - $nav['left'] > 2 && $max < $maxPage) {
				// thêm nút "First"
				$navig .= '<span class="page_item"><a href="'.$path.'1'.$suffix.'">1</a></span>';
				$navig .= '<span class="current_page_item"><b>...</b></span>';
			}
		}
		// thêm nút "«"
		$navig .= '<span class="page_item"><a href="'.$path.($currentPage - 1).$suffix.'">«</a></span>';
	}

	for ($i=$start;$i<=$end;$i++) {
		// trang hiện tại
		if ($i == $currentPage) {
			$navig .= '<span class="current_page_item">'.$i.'</span>';
		}
		// trang khác
		else {
			$pg_link = $path.$i;
			$navig .= '<span class="page_item"><a href="'.$pg_link.$suffix.'">'.$i.'</a></span>';
		}
	}
	
	if ($currentPage <= $maxPage - 1) {
		// thêm nút "»"
		$navig .= '<span class="page_item"><a href="'.$path.($currentPage + 1).$suffix.'">»</a></span>';
		
		if ($currentPage + $nav['right'] < $maxPage - 1 && $max + 1 < $maxPage) {
			// thêm nút "Last"
			$navig .= '<span class="current_page_item">...</span>';
			$navig .= '<span class="page_item"><a href="'.$path.$maxPage.$suffix.'">'.$maxPage.'</a></span>';
		}
	}
	$navig .= '</div>';
	
	// hiển thị kết quả
	echo $navig;
}


function	get_page($alias,$col = "noi_dung")
{
	global $db , $_fix;
	
	$alias = $db->escape($alias);
	
	$db->query("UPDATE tgp_page SET luot_xem = luot_xem + 1 WHERE alias = '".$alias."'");
	$r	=	$db->select("tgp_page","alias = '".$alias."'");
	while ($row = $db->fetch($r))
	{
		return $row[$col];
	}
	
	return "Unknown alias '".$alias."'";
}
function	get_bien($id)
{
	global $db;
	
	$r	=	$db->select("tgp_bien","ten = '".$id."'");
	while ($row = $db->fetch($r))
		return $row["gia_tri"];
}

function gui_mail($nguoigoi,$nguoinhan,$tieude,$noidung)
{
	global $conf;
	
	if (ereg("(.*)<(.*)>", $nguoigoi, $regs)) {
	   $nguoigoi = '=?UTF-8?B?'.base64_encode($regs[1]).'?=<'.$regs[2].'>';
	}
	
	$header = "From: ".$nguoigoi."\n";
	$header .= "Content-Type:text/html;";
	$header .= "charset=UTF-8\n";
	$noidung =	str_replace("\n"	, "<br>"	, $noidung);
	$noidung =	str_replace("  "	, "&nbsp; "	, $noidung);
	$noidung =	str_replace("<script>","&lt;script&gt;", $noidung);
	return (@mail($nguoinhan, $tieude, $noidung, $header));
			
}
function	get_title()
{
	global $db;
	$txt	=	get_bien("title");
	
	$r	=	$db->select("tgp_page","alias like 'dich_vu_%'","order by id limit 50");
	while($row = $db->fetch($r))
	{
		
		
			$txt .= " - ".lg_string::bo_dau($row["ten"]);
		
	
	}
		
	return $txt;
}

function hashString($string)
{
	return md5('qweasdzxc'.$string);
}

function numberFormatVN($number)
{
	return number_format($number, 0, ',', '.');
}
