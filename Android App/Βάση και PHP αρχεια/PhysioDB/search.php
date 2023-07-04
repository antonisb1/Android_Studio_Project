<?php
    $data = array();
    $host="localhost:4306";
    $uname="root";
    $pass="";
    $dbname="physiodb";

    $AMKA = $_GET['AMKA'];

    $dbh = mysqli_connect($host,$uname,$pass) or die("cannot connect");
    mysqli_select_db($dbh, $dbname);

    $sql = "SELECT AMKA, name, username FROM patient WHERE AMKA=$AMKA";

    $result = mysqli_query($dbh, $sql);

    while ($row = mysqli_fetch_array($result)) {
        $nested_data = array();

        $nested_data['AMKA'] = $row['AMKA'];
        $nested_data['name'] = $row['name'];
        

        $data[$row['username']] = $nested_data ;
    } 

    header("Content-Type: application/json");
    echo json_encode($data);
    mysqli_close($dbh);
?>