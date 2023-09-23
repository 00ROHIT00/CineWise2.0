<?php
session_start();

if (isset($_SESSION['userName'])) {
    // User is signed in
    echo $_SESSION['userName'];
    if (isset($_POST['movieName'])) {
      $movieName = $_POST['movieName'];
      echo "Received Movie Name:", $movieName;
      
        $username = $_SESSION['userName'];

        // Establish a database connection
        $host = 'localhost';
        $dbUsername = 'root';
        $dbPassword = '';
        $dbName = 'cinewise';

        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

        // Check if the connection was successful
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Insert the movie ID and username into the watch later list
        $sqlAddToWatchLater = "INSERT INTO watchlater(username, movieName) VALUES('$username','$movieName');";

        if ($conn->query($sqlAddToWatchLater) === TRUE) {
            echo "Movie added to Watch Later successfully.";
        } else {
            echo "Error: " . $sqlAddToWatchLater . "<br>" . $conn->error;
        }

        // Close the database connection
        $conn->close();
    } else {
        echo "Movie Name not provided.";
    }
} else {
    echo '<script>alert("User Is Not Signed In")</script>';
}
?>
