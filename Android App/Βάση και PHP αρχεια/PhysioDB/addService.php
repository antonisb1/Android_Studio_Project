<?php
 $data = array();
 $password = $_GET["password"];
 $name = $_GET["name"];
 $cost = $_GET["cost"];
 $description = $_GET["description"];
 $center = $_GET["Center"];

 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";
 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);
 $sql = "INSERT into service values('" . $password . "','" . $name . "','" . $cost . "','" . $description . "','" . $center . "')";
 echo $sql;
 mysqli_query($dbh, $sql);
 mysqli_close($dbh);
?>
