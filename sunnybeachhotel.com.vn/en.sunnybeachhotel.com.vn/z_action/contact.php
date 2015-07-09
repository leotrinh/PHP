<?php

	$txt_content = $_POST["noi_dung1"];
	$txt_contact = $_POST["lien_he1"];
	$txtTen = $_POST["txt_ten"];
	
	$mail = new PHPMailer();
		//********************************************/
		$SMTP_Host = "mail.sun-group.com.vn";
		$SMTP_Port = 25;
		$SMTP_UserName = "cuongnt@sun-group.com.vn";
		$SMTP_Password = "developersun";
		$from = $SMTP_UserName;
		$to = "admin@sunland.com.vn";
		// Luu y: $SMTP_UserName = $from
		//********************************************/
		
		$mail->IsSMTP();
		$mail->Host     = $SMTP_Host;
		$mail->SMTPAuth = true;
		$mail->Username = $SMTP_UserName;
		$mail->Password = $SMTP_Password;
		
		$mail->From     =$from;
		$mail->FromName = lg_string::UNI_2_TXT("Khách hàng ký gửi BĐS");
		$mail->AddAddress($to);
		//$mail->AddReplyTo("info@site.com","Information");
		
		$mail->WordWrap = 50;
		//$mail->AddAttachment("/var/tmp/file.tar.gz");
		//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");
		$mail->IsHTML(true);
		
		$mail->Subject  =  lg_string::UNI_2_TXT($txtTen);
		//Thiết lập định dạng font chữ
		$mail->CharSet = "utf-8";
		$txt_Content  .=  "<b>Nội dung mail ký gửi BĐS</b>";
		$txt_Content .= "<br />-----------------------------------------------<br />".
							(($txt_content)?"Nội dung : ". $txt_content."<br />":"<br />").
							"<br />-------------------------------------------------<br />".
							(($txt_contact)?"Liên hệ : ".$txt_contact."<br />":"<br />");
		$mail->Body  =   $txt_Content;
		
		if(!$mail->Send())
		{
		   echo "<script> alert('Gửi mail không thành công');</script>";
		   echo "<script> alert('".$mail->ErrorInfo."');</script>";
		   exit;
		}
		else
		{
		echo "OK" ;
		}
?>