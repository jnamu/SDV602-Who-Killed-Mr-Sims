<?php
// establishing the MySQLi connection
$con = mysqli_connect(“localhost”,”root”,””,”users”);
mysqli_connect("$con")or die("cannot connect");
// if (mysqli_connect_errno())
// {
// echo “MySQLi Connection was not established:” .mysqli_connect_error();
// }

// checking the user
if(isset($_POST['login'])){
	$email = mysqli_real_escape_string($con,$_POST['email']);
	$pass = mysqli_real_escape_string($con,$_POST['pass']);
	$sel_user = "select * from users where user_email='$email' AND user_pass='$pass'";
	$run_user = mysqli_query($con, $sel_user);
	$check_user = mysqli_num_rows($run_user);
	
	if($check_user>0){
		$_SESSION["user_email"]=$email;
		echo "<script>window.open('login.html','_self')</script>";
	}
	else {
		echo "<script>alert('Email or password is not correct, try again!')</script>";
	}
}
?>