<?php
// Database connection settings
$servername = "localhost:4306";
$username = "root";
$password = "";
$dbname = "physiodb";

// Create a new connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to select data from the "appointments" table
$sql = "SELECT * FROM appointments";

// Execute the query
$result = $conn->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
    // Output buffer
    $output = '';

    // Fetch each row of data
    while ($row = $result->fetch_assoc()) {
        // Convert the row data to JSON format
        $json = json_encode($row);

        // Output the JSON object
        $output .= $json . "\n";
    }

    // Output the collected JSON objects
    echo $output;
} else {
    echo "No data found in the appointments table.";
}

// Close the database connection
$conn->close();
?>