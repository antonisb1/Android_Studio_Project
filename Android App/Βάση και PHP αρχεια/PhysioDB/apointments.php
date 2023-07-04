<?php
$host = "localhost:4306";
$uname = "root";
$pass = "";
$dbname = "physiodb";

$data = array();
$date = $_GET['date'];

$dbh = mysqli_connect($host, $uname, $pass) or die("Cannot connect");
mysqli_select_db($dbh, $dbname);

$sql = "SELECT * FROM appointments WHERE appointments.date = '$date' and appointments.appointmentRequest = 1";


$result = mysqli_query($dbh, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $nested_data = array();

    $nested_data['id'] = $row['id'];
    $nested_data['date'] = $row['date'];
    $nested_data['hour'] = $row['hour'];
    $nested_data['available'] = $row['available'];
    $nested_data['appointmentRequest'] = $row['appointmentRequest'];
    $nested_data['patientName'] = $row['patientName'];
    $nested_data['appointmentDescription'] = $row['appointmentDescription'];

    $data[$row['id']] = $nested_data ;
}

header("Content-Type: application/json");
echo json_encode($data);

mysqli_close($dbh);
?>