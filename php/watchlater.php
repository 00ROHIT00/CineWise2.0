<?php
session_start();

if (!isset($_SESSION['userName'])) {
    // Redirect to the login page
    header('Location: http://localhost/cinewise2.0/signin.html');
    exit;
}

// Rest of your code for authenticated users
if (isset($_POST['movieName'])) {
    $movieName = $_POST['movieName'];
    echo "Received Movie Name:", $movieName;
    $username = $_SESSION['userName'];
    $host = 'localhost';
    $dbUsername = 'root';
    $dbPassword = '';
    $dbName = 'cinewise';
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sqlAddToWatchLater = "INSERT INTO watchlater(username, movieName) VALUES('$username','$movieName');";
    if ($conn->query($sqlAddToWatchLater) === TRUE) {
        echo "Movie added to Watch Later successfully.";
    } else {
        echo "Error: " . $sqlAddToWatchLater . "<br>" . $conn->error;
    }
    $conn->close();
} else {
    echo "Movie Name not provided.";
}
?>
