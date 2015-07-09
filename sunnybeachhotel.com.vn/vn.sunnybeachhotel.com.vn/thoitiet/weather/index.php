
<script language="javascript" src="js/ajax.js"></script>

<style>

.bg_tb
{
	height:130px;
}

lable
{
	float:left;
	font-size:11px;
}
select.wea
{
	background:none repeat scroll 0 0 #623203;
	width:130px;
	border:1px solid #F6DE91;
	color:#F6DE91;
	}
option { color:#000;}
.wea_con
{
	float:left; width:130px; margin-top:5px; margin-top:-15px\9;
	}	
</style>


<Div style="width:150px;height:86px; float:left; padding-top:10px; background:#6f3d02;">

              <div style="float:left; height:20px; width:130px;">      
             <form name="form1" method="post">
                
                        <select name="select" onChange="Weather(this.value);" class="wea" >
                        <option value="0">TP.HCM</option>
                        <option value="1">Sơn la</option>
                        <option value="2">Hải Phòng</option>
                        <option value="3">Hà Nội</option>
                        <option value="4">Vinh</option>
                        <option value="5">Đà Nẵng</option>
                        <option value="6">Nha Trang</option>
                        <option value="7">Pleiku</option>
                        </select>
               
                   </form>
                </div>
                <div class="wea_con">   
                
                     <div id="content_Weather"><script>Weather(0)</script></div>
               
                </div>
             
</Div>

