
<?php
	$name 			= $_POST['txtname'];
	$phone  		= $_POST['txtTel'];
	$email  		= $_POST['txtEmail'];
	$add			= $_POST['txtAddress'];
	$Subject  		= $_POST['txtSubject'];
	$Content		= $_POST['txtContent'];	
	
	
	
	
	
// file 02-smtp.php

//Nhúng thư viện phpmailer
include "_CORE/class.phpmailer.php";
include "_CORE/class.smtp.php";
//Khởi tạo đối tượng


$mail = new PHPMailer();
$mail->IsSMTP(); // set mailer to use SMTP
$mail->Host = "smtp.gmail.com"; // specify main and backup server
$mail->Port = 465; // set the port to use
$mail->SMTPAuth = true; // turn on SMTP authentication
$mail->SMTPSecure = 'ssl';
$mail->Username = "goon.adm@gmail.com"; // your SMTP username or your gmail username
$mail->Password = "anhthu368368"; // your SMTP password or your gmail password

$from = $email; // Reply to this email
$to=get_bien("email"); // Recipients email ID
$mail->From = $from;
$mail->AddAddress($to,$name);
$mail->AddReplyTo($from,$name);
$mail->WordWrap = 50; // set word wrap
$mail->IsHTML(true); // send as HTML
$mail->Subject = $Subject;

	

$mail->CharSet = "utf-8";
$txt_Content  .=  "<b>Nội dung mail liên hệ website</b>";
$txt_Content .= "<br />-----------------------------------------------<br />".

					(($name)?"Họ tên: ". $name."<br />":"<br />").
					"<br />-------------------------------------------------<br />".
					(($add)?"Địa chỉ : ". $add."<br />":"<br />").
					"<br />-------------------------------------------------<br />".
					(($phone)?"Điện thoại : ". $phone."<br />":"<br />").
					"<br />-------------------------------------------------<br />".
					(($Content)?"Nội dung : ". $Content."<br />":"<br />");
					"<br />-------------------------------------------------<br />".
					
$mail->Body  =   $txt_Content;

if(!$mail->Send()) {
  $thongbao = "Không thể gửi mail của bạn vì có một vài lỗi từ phía máy chủ.";
  //echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  $thongbao = "Bạn đẫ gửi mail đặt phòng thành công. Chúng tôi sẽ liên hệ với bạn để xác nhận email này!";
  //echo "Message sent!";
}
echo $thongbao;
?>