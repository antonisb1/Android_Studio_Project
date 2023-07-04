<?php
        $host="localhost:4306";
        $uname="root";
        $pass="";
        $dbname="PhysioDB";

        $dbh = mysqli_connect($host,$uname,$pass,$dbname) or die ("cannot connect");
        mysqli_select_db($dbh, $dbname);

        $data = array(); 
        $date = $_GET['date'];

        $sql = "SELECT * FROM appointments WHERE appointments.date = '$date'";
        $result = mysqli_query($dbh, $sql);

    while ($row = mysqli_fetch_assoc($result)) {
    $nested_data = array();

    $nested_data['id'] = $row['id'];
    $nested_data['hour'] = $row['hour'];
    $nested_data['patientName'] = $row['patientName'];
    $nested_data['appointmentDescription'] = $row['appointmentDescription'];

    $data[$row['id']] = $nested_data ;
}

    header("Content-Type: application/json"); 
    echo json_encode($data); 
    mysqli_close($dbh);



?>