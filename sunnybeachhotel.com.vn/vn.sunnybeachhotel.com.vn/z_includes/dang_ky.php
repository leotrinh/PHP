

	<div class="popup_lienhe">
		<div class="get_page_dang_ky">		
		  <?=get_page("loi_ngo_dang_ky")?>
		</div> 
        <div class="get_page_dang_ky22">
       		 <div class="get_page_dang_ky2">		
				 Đăng ký học trực tuyến 
			</div>
        </div>
		<div class="form">		
		<form name="frmContact" class="formabcd"  onSubmit="return send_dangky(this)" method="post" action="#">
		<input type="hidden" name="func" value="send" />
		<input type="text" style="display:none" name="txttenlop" value="<?=$r["ten_lop"]?>" />	
		<div style="float:left;">
		
		<div class="rowElem2">
				
			<input type="text" class="name" onClick="if (this.value == 'Họ và tên') this.value = '';" value="Họ và tên" name="txtName" onBlur="if(this.value=='')this.value='Họ và tên';" /> 
			<input type="text" class="address" onClick="if (this.value == 'Địa chỉ') this.value = '';" value="Địa chỉ" name="txtAddress" onBlur="if(this.value=='')this.value='Địa chỉ';" /> 
		</div>	
		<div class="rowElem2">
			<input type="text" class="phone" onClick="if (this.value == 'Điện thoại') this.value = '';" value="Điện thoại" name="txtTel" onBlur="if(this.value=='')this.value='Điện thoại';" /> 
		
			<select name="txtEmail" class="email"  style="width:202px; height:24px; text-indent:4px;">               
            	  <option value="0">Chọn khóa học đăng ký</option>
                  <option  value="Vỡ lòng">Vỡ lòng</option>
				  <option  value="Ngữ pháp sơ cấp">Ngữ pháp sơ cấp</option>				
                  <option   value="Ngữ pháp trung cấp">Ngữ pháp trung cấp</option>
				  <option   value="Ngữ pháp cao cấp">Ngữ pháp cao cấp</option>	
                  <option   value="Giao tiếp sơ cấp">Giao tiếp sơ cấp</option>	
                  <option   value="Giao tiếp cao cấp">Giao tiếp cao cấp</option>
                  <option   value="Thiếu nhi">Thiếu nhi</option>	
            </select>
		</div>
		<div class="rowElem2">
			<textarea rows="5" name="txtContent" cols="40" style="width:428px;"></textarea>
		</div>
		</div>
		
		<div style="float:left; margin-top:20px; margin-left:120px;">
			<input class="submit" type="submit" border="0" value=""/>
			<input class="reset" type="reset" border="0" value=""/>
		</div>
		</form>
	</div>
   </div> 
	