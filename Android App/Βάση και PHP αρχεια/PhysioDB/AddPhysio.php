<?php
 $data = array();
 $name = $_GET["name"];
 $address = $_GET["address"];
 $afm = $_GET["afm"];
 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";
 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);
 $sql = "INSERT into physiotherapy values('" . $name . "','" . $address . "','" .
$afm . "')";
 echo $sql;
 mysqli_query($dbh, $sql);
 mysqli_close($dbh);
?>
