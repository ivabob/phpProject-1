<?php
	session_start();
	$name= $_POST['name'];
	$surname= $_POST['surname'];
	$email= $_POST['email'];
	$phone= $_POST['phone'];
	$city= $_POST['city'];
	$background= $_POST['background'];
	echo "$name $surname";
?>