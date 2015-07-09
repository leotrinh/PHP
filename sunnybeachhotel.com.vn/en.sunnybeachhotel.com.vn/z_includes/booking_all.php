	



<form name="frmContact"  onSubmit="return send_datphong(this)" method="post" action="#" class="formabc">

	<input type="hidden" name="func" value="send" />		

<div class="rowElem">

	<div style="margin-left:5px; float:left;">

		<input type="text" class="khachsan"  onClick="if (this.value == 'Full name') this.value = '';" value="Full name" name="txtname" />
        <input type="text" class="khachsan" onClick="if (this.value == 'Address') this.value = '';" value="Address" name="txtaddress" />

	</div>	

	<div style="margin-left:5px; float:left;">

		<input type="text" class="khachsan" onClick="if (this.value == 'Phone') this.value = '';" value="Phone" name="txtphone" />
		<input type="text" class="khachsan" onClick="if (this.value == 'Num people') this.value = '';" value="Num people" name="txtsonguoi"   id="txtduration" onKeyUp="javascript:checkNumber(frmContact.txtduration);"/>

	</div>

	<div style="margin-left:5px; float:left;">

		
	</div>

	<div style="margin-left:5px; float:left;">

		 <input  id="DPngayden" type="text" name="txtngayden" class="ngayden" onclick="if(this.value=='Check-in') this.value='';" value="Check-in" style="width:30px;"/>
         <input  id="DPngaydi" type="text" name="txtngaydi" class="ngayden" onclick="if(this.value=='Check-out') this.value='';" value="Check-out" />
	 
	</div>   

	<div style="float:left;">

		 

	</div>   		





	<div style="margin-left:5px; float:left;">

    	

	      <select  name="txtsophong" style="width:61px; float:left;">

		  			<option value="0">Num room</option>

                     <?php

                        for($i=1; $i<=10; $i++){

                            echo "<option value=$i>$i</option>";

                        }

                    ?>

          </select>

        

	</div>	  

	<div style="margin-left:9px; float:left;">
    	   <select  style="width:70px; float:left;"  name="txtloaiphong">

		  			<option value="0">Kind of room</option>

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



