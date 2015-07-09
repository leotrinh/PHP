	



<form name="frmContact"  onSubmit="return send_datphong(this)" method="post" action="#" class="formabc">

	<input type="hidden" name="func" value="send" />		

<div class="rowElem">

	<div style="margin-left:5px; float:left;">

		<input type="text" class="khachsan"  onClick="if (this.value == 'Họ tên') this.value = '';" value="Họ tên" name="txtname" />
        <input type="text" class="khachsan" onClick="if (this.value == 'Địa chỉ') this.value = '';" value="Địa chỉ" name="txtaddress" />

	</div>	

	<div style="margin-left:5px; float:left;">

		<input type="text" class="khachsan" onClick="if (this.value == 'Điện thoại') this.value = '';" value="Điện thoại" name="txtphone" />
		<input type="text" class="khachsan" onClick="if (this.value == 'Số người') this.value = '';" value="Số người" name="txtsonguoi"   id="txtduration" onKeyUp="javascript:checkNumber(frmContact.txtduration);"/>

	</div>

	<div style="margin-left:5px; float:left;">

		
	</div>

	<div style="margin-left:5px; float:left;">

		 <input  id="DPngayden" type="text" name="txtngayden" class="ngayden" onclick="if(this.value=='Ngày đến') this.value='';" value="Ngày đến" style="width:30px;"/>
         <input  id="DPngaydi" type="text" name="txtngaydi" class="ngayden" onclick="if(this.value=='Ngày đi') this.value='';" value="Ngày đi" />
	 
	</div>   

	<div style="float:left;">

		 

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

                    <option value="Suite">Suite</option>

                    <option value="Deluxe">Deluxe</option>

                    <option value="Superior">Superior</option>

          </select>  
	</div>

	

	
	<div style="margin-left:4px; float:left;">

	<input name="submit"  class="dangky" type="submit"  value=" " />


	</div>

</div>		

	</form>		 



