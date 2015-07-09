<div class="left" style="width:450px;">				
<div class="title_sub" style="width:415px; text-align:center; font-size:12px; line-height:18px; font-family:arial;"> <?=get_page("thong_tin_lien_he")?></div>
<div class="noidung_sub" style="width:420px;">
				
	  
	<div class="form_lienhe">
		
		<form name="frmContact" class="form_lienhe"  onSubmit="return send_res(this)" method="post" action="#">
		<input type="hidden" name="func" value="send" />
		
		
		<div class="rowElem_lh"><label >Họ tên (*)</label>
				
			<input type="text" class="name" value="" name="txtName" />
		</div>
		
		<div class="rowElem_lh"><label>Email (*)</label>
			<input type="text" class="name" value="" name="txtEmail" />
		</div>
		
		<div class="rowElem_lh"><label>Điệi thoại </label>
			
			<input type="text" class="name" value="" name="txtTel" />
		</div>
		
		<div class="rowElem_lh"><label>Địa chỉ</label>
			<input type="text" class="name" value="" name="txtAddress" />
		</div>
		
		<div class="rowElem_lh"><label>Tiêu đề (*)</label>
			<input type="text" class="name" value="" name="txtSubject" />
		</div>
			
		<div class="rowElem_lh" style="height:80px;"><label>Nội dung (*)</label>
			<textarea rows="5" name="txtContent" cols="40"   class="textarea"></textarea>
		
		</div>
			
		<div class="rowElem_lh">
			<div style="margin-left:172px; margin-top:20px;">
			<input class="submit" type="image" border="0" src="/images/send.png"/>
			<input class="reset" type="reset" border="0" value=""/>
			</div>
		</div>
		</form>
	</div>							
		</div>					
</div>
<div class="right">
	<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=	
AIzaSyC69sbqJj1wKe5MLt2WnoVR7WEhOA-yDDI&sensor=false"
       type="text/javascript">
    </script>
   <script type="text/javascript">
		function initialize() {
			  if (GBrowserIsCompatible()) 
			  {
				var map = new GMap2(document.getElementById("map_canvas"));
				map.setCenter(new GLatLng(16.06993422909931, 108.2350891828537), 16);
				map.setUIToDefault();
				
			map.openInfoWindowHtml(map.getCenter(),"<b style='color:#ff0000; font-size:14px; text-transform:uppercase;'> Khách sạn Sunny Beach </b>	<br /><div style='text-align:left; color:#000;'><img src='/uploads/image/home.png' width='20px' height='20px'/>: Lô 29-30 Dương Đình Nghệ - Thành phố Đà Nẵng <br /> <img src='/uploads/image/phone.png' width='20px' height='20px'/>: (+84 ) 0511.3967.666 - 0511.3967.665 <br /> <img src='/uploads/image/fax.png' width='20px' height='20px'/> : 0511.3967.664  <br /> <img src='/uploads/image/mail.png' width='20px' height='20px'/>: info@sunnybeachhotel.com.vn <br /> <img src='/uploads/image/Website.png' width='20px' height='20px'/> : sunnybeachhotel.com.vn <br /><img src='/uploads/image/icon-dd.png' width='20px' height='20px'/>: (+84) 090.353.0068</div>");
			  }
			}
    </script>

 <div style="width:451px; height:348px; border:2px solid #fff; float:left;" ><div id="map_canvas" style="height:348px; width:451px; z-index:9999"></div>
</div>	
</div>