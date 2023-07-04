<?php
 $data = array();
 $host="localhost:4306";
 $uname="root";
 $pass="";
 $dbname="physiodb";
 $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
 mysqli_select_db($dbh, $dbname);
 $sql = "SELECT id,doctorName,date,hour,available,appointmentRequest,patientName,appointmentDescription,cost FROM appointments";
 $result = mysqli_query($dbh, $sql);
 
while ($row = mysqli_fetch_array($result)) {
 $data[] = array($row["id"],$row["doctorName"],$row["date"],$row["hour"],$row["available"],$row["appointmentRequest"],$row["patientName"],$row["appointmentDescription"],$row["cost"]);
 }
 header("Content-Type: application/json");
 echo json_encode($data);
 mysqli_close($dbh);
?>	

 