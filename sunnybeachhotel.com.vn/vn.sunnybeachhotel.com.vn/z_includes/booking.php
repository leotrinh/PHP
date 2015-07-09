	

<div class="form_datphong ">
<form name="frmContact"  onSubmit="return send_datphong(this)" method="post" action="#" class="formabc">
	<input type="hidden" name="func" value="send" />		
<div class="rowElem">
	<div style="float:left;">
		<input type="text" class="khachsan"  onClick="if (this.value == 'Họ tên') this.value = '';" value="Họ tên" name="txtname" />
	</div>	
	<div style="margin-left:5px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Địa chỉ') this.value = '';" value="Địa chỉ" name="txtaddress" />
	</div>
	<div style="margin-left:5px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Điện thoại') this.value = '';" value="Điện thoại" name="txtphone" />
	</div>

	
	<div style="margin-left:5px; float:left;">
		 <input  id="DPngayden" type="text" name="txtngayden" class="ngayden" onclick="if(this.value=='Ngày đến') this.value='';" value="Ngày đến" />
			  <img  id="from_calendar" class="lich_den" src="/images/lich.gif" alt='Click Here to Pick up the date' style="position:relative; top:4px; left:-4px;">
	</div>   
	<div style="margin-left:5px; float:left;">
		 <input  id="DPngaydi" type="text" name="txtngaydi" class="ngayden" onclick="if(this.value=='Ngày đi') this.value='';" value="Ngày đi" />
			  <img  id="from_calendar" class="lich_den" src="/images/lich.gif" alt='Click Here to Pick up the date' style="position:relative; top:4px; left:-4px;">
	</div>   		


	<div style="margin-left:5px; float:left;">
    	
	      <select  name="txtsophong" style="width:61px; float:left;">
		  			<option value="0">Số phòng</option>
                     <?php
                        for($i=1; $i<=10; $i++){
                            echo "<option value=$i>$i</option>";
                        }
                    ?>
          </select>
        
	</div>	  
	<div style="margin-left:9px; float:left;">
		  <select  style="width:70px; float:left;"  name="txtloaiphong">
		  			<option value="0">Loại phòng</option>
                    <option value="VIP">VIP</option>
                    <option value="Standard">Standard</option>
                    <option value="Suite">Suite</option>
          </select>  
	</div>
	
	<div style="margin-left:9px; float:left;">
		<input type="text" class="khachsan" onClick="if (this.value == 'Số người') this.value = '';" value="Số người" name="txtsonguoi"   id="txtduration" onKeyUp="javascript:checkNumber(frmContact.txtduration);"/>
	</div>
	<div style="margin-left:4px; float:left;">
	<input name="submit"  class="dangky" type="submit"  value="aaaaaa" />

	</div>
</div>		
	</form>		 
   </div>

