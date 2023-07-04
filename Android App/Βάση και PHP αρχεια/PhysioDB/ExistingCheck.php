

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

 $data = array();
 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";

 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);
 $sql = "SELECT AMKA FROM patient";
 $result = mysqli_query($dbh, $sql);
 
while ($row = mysqli_fetch_array($result)) {
 $data[] = array($row["AMKA"]);
 }
 header("Content-Type: application/json");
 echo json_encode($data);
 mysqli_close($dbh);
?>
