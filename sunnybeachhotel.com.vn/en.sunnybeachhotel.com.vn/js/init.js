// AJAX INIT
function $$$(id) {
	return document.getElementById(id);
}
function khoitao_ajax()
{
	var x;
	try 
	{
		x	=	new ActiveXObject("Msxml2.XMLHTTP");
	}
	catch(e)
	{
    	try 
		{
			x	=	new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch(f) { x	=	null; }
  	}
	if	((!x)&&(typeof XMLHttpRequest!="undefined"))
	{
		x=new XMLHttpRequest();
  	}
	return  x;
}
function	Forward(url)
{
	window.location.href = url;
}
function	_postback()
{
	return void(1);
}

$(document).ready(function()
{

	$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">'+ title + '</span>';
				}
		});

});
function het_phong(frmContact)
{
	alert("Hiện khách sạn chúng tôi đã hết phòng !")
}
$(document).ready(function() {
	
	$('#booking').click(function () {
		if ($("#booking2").is(":hidden")) 
		{
			$("#booking2").slideDown("slow");
		} 
		else 
		{
		$("#booking2").slideUp("slow");
		}
	});
		
		
});
function send_datphong(frmContact)
{
	
	txtname = frmContact.txtname.value
	txtaddress = frmContact.txtaddress.value
	txtphone = frmContact.txtphone.value
	
	txtngayden=frmContact.txtngayden.value
	txtngaydi=frmContact.txtngaydi.value
	
	
	txtsophong=frmContact.txtsophong.value
	txtloaiphong=frmContact.txtloaiphong.value

	txtsonguoi=frmContact.txtsonguoi.value
	if(txtname == 'Họ tên')
	{
		alert("Xin vui lòng nhập họ tên!");
		frmContact.txtname.focus();
		return false;
	}
	if(txtname == '')
	{
		alert("Xin vui lòng nhập họ tên!");
		frmContact.txtname.focus();
		return false;
	}
	if(txtaddress =='Địa chỉ')
	{
		alert("Vui lòng nhập địa chỉ!");
		frmContact.txtaddress.focus();
		return false;
	}
	if(txtaddress =='')
	{
		alert("Vui lòng nhập địa chỉ !");
		frmContact.txtaddress.focus();
		return false;
	}
	
	if(txtphone =='Điện thoại')
	{
		alert("Vui lòng nhập số điện thoại !");
		frmContact.txtphone.focus();
		return false;
	}
	if(txtphone =='')
	{
		alert("Vui lòng nhập số điện thoại!");
		frmContact.txtphone.focus();
		return false;
	}
	
	if(txtngayden =='Ngày đến')
	{
		
		alert("Vui lòng chọn ngày đến");
		frmContact.txtngayden.focus();
		return false;
	}
	if(txtngaydi =='Ngày đi')
	{
		
		alert("Vui lòng chọn ngày đi");
		frmContact.txtngaydi.focus();
		return false;
	}
	
	 
	 times_hientai = new Date();
     var ngayden = new Date(txtngayden);
	 var ngaydi = new Date(txtngaydi);
		if(ngayden <= times_hientai)
		 {
			 alert("Ngày đến phải lớn hơn ngày hiện tại !");
			 frmContact.txtngayden.focus();
			 return false;
		 }
		 if(ngayden >= ngaydi)
		 {
			 alert("Vui lòng chọn lại ngày đến và ngày đi !"); 
			 return false;
		 }
	if(txtsonguoi =='Số người')
	{
		
		alert("Vui lòng nhập số người");
		frmContact.txtsonguoi.focus();
		return false;
	}
	if(txtsonguoi =='')
	{
		
		alert("Vui lòng nhập số người");
		frmContact.txtsonguoi.focus();
		return false;
	}
	
	else
	{
		var	query	=	"act=send_datphong&txtname="+txtname+"&txtaddress="+txtaddress+"&txtphone="+txtphone+"&txtsonguoi="+txtsonguoi+"&txtsophong="+txtsophong+"&txtloaiphong="+txtloaiphong+"&txtngayden="+txtngayden+"&txtngaydi="+txtngaydi;
		var http 	=	khoitao_ajax();
		try
		{
			//$$$('inner').innerHTML = "<center style='margin-top:50px'><img src='/images/loading.gif' /></center>";
			http.open("POST", "/action.php");
			http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			http.setRequestHeader("Cache-control", "no-cache");		
			http.onreadystatechange = function()
			{
				if (http.readyState == 4)
				{
					if (http.status == 200)
					{
						x = http.responseText;
						if (x == "OK")
						{
							alert("Gởi mail thành công ! ");
							window.location.href = "/";
						}
						else
						{
							alert(x);
							window.location.href = "/";
						}
					}
					else
					{
							return false;
					}
				}
			}
			http.send(query);
		}
		catch (e)
		{
		}
		return false;
	}
}

function sendthongtin(frm)
{
	
	txtEmail = frm.txtEmail.value;
	
	if(txtEmail =='Nhập địa chỉ email')
	{
	alert("Vui lòng nhập email !");
	frm.txtEmail.focus();
	return false;
	}
	if(txtEmail =='')
	{
	alert("Vui lòng nhập email !");
	frm.txtEmail.focus();
	return false;
	}
	txtEmail = frm.txtEmail.value;
	if (!txtEmail.match(/^([-\d\w][-.\d\w]*)?[-\d\w]@([-\w\d]+\.)+[a-zA-Z]{2,6}$/))
	{
		alert('Địa chỉ email không hợp lệ.');
		frm.txtEmail.focus();
		return false;
	}
	var	query	=	"txtEmail="+txtEmail;
	var http 	=	khoitao_ajax();
	
	try
		{
			//$$$('inner').innerHTML = "<center style='margin-top:50px'><img src='/images/loading.gif' /></center>";
			http.open("POST", "/email_reg.php");
			http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			http.setRequestHeader("Cache-control", "no-cache");		
			http.onreadystatechange = function()
			{
				if (http.readyState == 4)
				{
					if (http.status == 200)
					{
						x = http.responseText;
						if (x == "OK")
						{
							alert("Gởi mail thành công, chúng tôi sẽ gửi cho bạn những thông tin mới nhất và các chương trình khuyến mãi của khách sạn chúng tôi. Xin cám ơn! ");
							window.location.href = "/";
							
						}
						else
						{
							alert(x);
							window.location.href = "/";
						}
					}
					else
					{
							return false;
					}
				}
			}
			http.send(query);
		}
		catch (e)
		{
		}
		return false;
	
}
function send_res(frmContact)
{
	txtName = frmContact.txtName.value
	txtTel = frmContact.txtTel.value
	txtEmail = frmContact.txtEmail.value	
	txtContent=frmContact.txtContent.value
	txtSubject=frmContact.txtSubject.value
	txtAddress=frmContact.txtAddress.value
	if(!txtName)
	{
		alert("Vui lòng nhập họ tên !");
		frmContact.txtName.focus();
		return false;
	}
	if(!txtEmail)
	{
		alert("Vui lòng nhập email !");
		frmContact.txtEmail.focus();
		return false;
	}
	if(!txtTel)
	{
		alert("Vui lòng nhập số điện thoại !");
		frmContact.txtTel.focus();
		return false;
	}
	if(!txtAddress)
	{
		alert("Vui lòng nhập địa chỉ !");
		frmContact.txtAddress.focus();
		return false;
	}
	if(!txtSubject)
	{
		
		alert("Vui lòng nhập tiêu đề !");
		frmContact.txtSubject.focus();
		return false;
	}
	if(!txtContent)
	{
		alert("Vui lòng nhập nội dung !");
		frmContact.txtContent.focus();
		return false;
	}
	
	email=txtEmail
	if (!email.match(/^([-\d\w][-.\d\w]*)?[-\d\w]@([-\w\d]+\.)+[a-zA-Z]{2,6}$/)){
		alert('Địa chỉ email không hợp lệ.');
		frmContact.txtEmail.focus();
		return false;
		
	}
	
	else
	{
		var	query	=	"act=send_res&txtName="+txtName+"&txtTel="+txtTel+"&txtEmail="+txtEmail+"&txtSubject="+txtSubject+"&txtContent="+txtContent+"&txtAddress="+txtAddress;
		var http 	=	khoitao_ajax();
		try
		{
			//$$$('inner').innerHTML = "<center style='margin-top:50px'><img src='/images/loading.gif' /></center>";
			http.open("POST", "/action.php");
			http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			http.setRequestHeader("Cache-control", "no-cache");		
			http.onreadystatechange = function()
			{
				if (http.readyState == 4)
				{
					if (http.status == 200)
					{
						x = http.responseText;
						if (x == "OK")
						{
							alert("Gởi mail thành công ! ");
							window.location.href = "/";
							
						}
						else
						{
							alert(x);
							window.location.href = "/";
						}
					}
					else
					{
							return false;
					}
				}
			}
			http.send(query);
		}
		catch (e)
		{
		}
		return false;
	}
}
//mn
 $(document).ready(function() {
          var $navLi = $('#nav li'); 
        $('<span></span>').insertBefore('#nav li a');
        
        $navLi.each(function() {
           var linkText = $(this).find('a').text();
           $(this).find('span').show().text(linkText);
           //alert(linkText);
        });
        $navLi.hover(function() {
            $(this)
            .find('span')
            .stop()
            .animate({marginTop: '-39px'}, 300);
        }, function() {
            $(this)
            .find('span')
            .stop()
            .animate({marginTop: '0px'}, 300);
        });
      });
