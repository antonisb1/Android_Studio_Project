<?php
 $data = array();
 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";
 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);
 $sql = "SELECT username, password FROM admin_login";
 $result = mysqli_query($dbh, $sql);
 
while ($row = mysqli_fetch_array($result)) {
 $data[] = array($row["username"],$row["password"]);
 }
 header("Content-Type: application/json");
 echo json_encode($data);
 mysqli_close($dbh);
?>