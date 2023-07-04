<?php
 $data = array();
 $username = $_GET["username"];
 $password = $_GET["password"];
 $name = $_GET["name"];
 $address = $_GET["address"];
 $AMKA = $_GET["AMKA"];
 $myDoctor = $_GET["myDoctor"];

 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";

 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);

 $sql = "INSERT into patient values('" . $username . "','" . $password . "','" . $name . "','" . $address . "','" . $AMKA . "','"  . $myDoctor . "')";

 echo $sql;
 mysqli_query($dbh, $sql);
 mysqli_close($dbh);
?>
