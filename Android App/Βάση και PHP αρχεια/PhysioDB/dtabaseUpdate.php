<?php
// Database connection parameters
$servername = "localhost:4306";
$username = "root";
$password = "";
$dbname = "physiodb";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the updated values from the request
$id = $_GET['id'];
$date = $_GET['date'];

// Update the data in the database
$sql = "UPDATE appointments SET appointments.available='0', appointments.appointmentRequest='0' WHERE id = '$id' and date = '$date'"; // Adjust the query as per your table structure and conditions
if ($conn->query($sql) === TRUE) {
    echo "Data updated successfully";
} else {
    echo "Error updating data: " . $conn->error;
}

// Close the database connection
$conn->close();
?>