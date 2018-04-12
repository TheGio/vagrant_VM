<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tech";

// Connect to local mysql (mariadb)
$conn = new mysqli($servername, $username, $password, $dbname);
// Check db connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Run the actual query
$sql = "SELECT * from vagranttest";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// Display query results
    echo "Query results:"."<br>"."<br>";
    while($row = $result->fetch_assoc()) {
        echo $row["name"]." - ". $row["phone"]. "<br>";
    }
} else {
    echo "Your query returned 0 results";
}
$conn->close();
?>
