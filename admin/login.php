<?php session_start();
require('../userdash/php-includes/connect.php');
$email = mysqli_real_escape_string($con,$_POST['email']);
$password = mysqli_real_escape_string($con,$_POST['password']);

$query = mysqli_query($con,"select * from admin where userid='$email' and password='$password'");
if(mysqli_num_rows($query)>0){
	$_SESSION['userid'] = $email;
	$_SESSION['id'] = session_id();
	$_SESSION['login_type'] = "admin";
	

	                          

	echo '<script>alert("Login Success.");window.location.assign("home.php");</script>';



     
}
else{
	echo '<script>alert("Email id or password is worng.");window.location.assign("index.php");</script>';
}

?>