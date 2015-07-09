	
<div class="left" style="width:617px;">				
<div class="noidung_sub" >	
<div class="form_datphong ">
<form name="frmContact"  onSubmit="return send_datphong(this)" method="post" action="#" class="formabc">
		<input type="hidden" name="func" value="send" />		
<div class="rowElem"><div style="margin-bottom:20px; text-align:center; font-size:13px; color:#404040;"><?=get_page("lien_he_dat_phong")?></div></div>
<div class="rowElem">
	<div style="margin-left:25px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Họ tên') this.value = '';" value="Họ tên" name="txtname" />
	</div>	
	<div style="margin-left:20px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Địa chỉ') this.value = '';" value="Địa chỉ" name="txtaddress" />
	</div>
	<div style="margin-left:40px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Điện thoại') this.value = '';" value="Điện thoại" name="txtphone" />
	</div>
</div>		 
<div class="rowElem">
	<div style="margin-left:25px; float:left;">
		<input type="text" class="khachsan" style="padding-left:10px\9;" onClick="if (this.value == 'Email') this.value = '';" value="Email" name="txtemail" />
	</div>	
	<div style="margin-left:20px; float:left;">
		 <input  id="DPngayden" type="text" name="txtngayden" class="ngayden" onclick="if(this.value=='Ngày đến') this.value='';" value="Ngày đến" />
			  <img  id="from_calendar" class="lich_den" src="/images/lich.gif" alt='Click Here to Pick up the date' style="position:relative; top:2px; left:5px;">
	</div>   
	<div style="margin-left:20px; float:left;">
		 <input  id="DPngaydi" type="text" name="txtngaydi" class="ngayden" onclick="if(this.value=='Ngày đi') this.value='';" value="Ngày đi" />
			  <img  id="from_calendar" class="lich_den" src="/images/lich.gif" alt='Click Here to Pick up the date' style="position:relative; top:2px; left:5px;">
	</div>   		
</div>
<div class="rowElem">
	<div style="margin-left:24px; float:left;">
	      <select  name="txtsophong" style="width:115px; float:left;">
		  			<option value="0">Số phòng</option>
                     <?php
                        for($i=1; $i<=10; $i++){
                            echo "<option value=$i>$i</option>";
                        }
                    ?>
          </select>
	</div>	  
	<div style="margin-left:11px; float:left;">
		  <select  style="width:115px; float:left;"  name="txtloaiphong">
		  			<option value="0">Loại phòng</option>
                    <option value="VIP">VIP</option>
                    <option value="Standard">Standard</option>
                    <option value="Suite">Suite</option>
          </select>  
	</div>
	<div style="margin-left:27px; float:left;">	   
		   <select  style="width:115px; float:left;" name="txtloaigiuong">
		   			<option value="VIP">Loại giường</option>
                    <option value="Đơn">Đơn</option>
                    <option value="Đôi">Đôi</option>
                    <option value="Ba">Ba</option>
            </select> 		  
	</div>			
</div>					
<div class="rowElem">
	<div style="margin-left:24px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Số người') this.value = '';" value="Số người" name="txtsonguoi"   id="txtduration" onKeyUp="javascript:checkNumber(frmContact.txtduration);"/>
	</div>
	<div style="margin-left:205px; float:left;">
	<input name="submit"  class="dangky" type="submit"  value="Đặt phòng" />
	<input name="submit" type="reset" class="nhaplai"  value="Nhập lại" />
	</div>
</div>			
	</form>		 
   </div>
	</div>
</div>
<div class="right" style="margin-left:0px; margin-top:25px;">
		<img src="/hinhnhap/h7.jpg" width="303px;" height="299px;" />					
</div>
