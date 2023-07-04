<?php
// Retrieve the values from the query parameters
$appointmentRequest = $_GET['appointmentRequest'] ?? '';
$patientName = $_GET['patientName'] ?? '';
$appointmentDescription = $_GET['appointmentDescription'] ?? '';
$available = $_GET['available'] ?? '';
$cost = $_GET['cost'] ?? '';
$id = $_GET['id'] ?? '';

// Establish a connection to your database
$servername = "localhost:4306";
$username = "root";
$password = "";
$database = "physiodb";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute the update statement
$sql = "UPDATE appointments SET appointmentRequest = ?, patientName = ?, appointmentDescription = ?, available = ?, cost = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssis", $appointmentRequest, $patientName, $appointmentDescription, $available, $cost, $id);
$stmt->execute();

// Check the result
if ($stmt->affected_rows > 0) {
    echo "Data updated successfully.";
} else {
    echo "No data updated.";
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
