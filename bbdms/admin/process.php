<?php
if($_SERVER["REQUEST_METHOD"]=="POST"){
	$name = $_POST["fullname"];
	$email = $_POST["emailid"];
	$subject = $_POST["subject"];
	$message = $_POST["message"];
	$to = $email; // Added semicolon here
	$headers = "From: $email"; // Corrected variable name and added "From:" 
	if(mail($to, $subject, $message, $headers)){
		echo "Email Sent";
	} else {
		echo "Email sending failed";
	}
}
?>
