<?php
try{	
	$db	=	new PDO("mysql:host=localhost; dbname=kur","root","");
}catch(PDOException $e){
	print $e->getMessage();
}

$db->exec("SET NAMES 'utf8'");
$db->exec("SET CHARACTER SET utf8");
$db->exec("SET COLLATION_CONNECTION = 'utf8_turkish_ci'");

?>