<?php 


$HostName = 'localhost';
// $UserName = 'idxesdsd_cal';
$UserName = 'root';
// $Password = 'v2BFvmbge2P+#C';
$Password = '';
$DataBase = 'configurator_v2';
// $DataBase = 'idxesdsd_cal_v2';

$con = mysqli_connect($HostName, $UserName, $Password, $DataBase)  or die('Database Error : Connection Lost');



?> 