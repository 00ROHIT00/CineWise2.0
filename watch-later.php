<!DOCTYPE html>
<html lang="en">
<head>
    <style> h3 { color : #C12020; }</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Watch Later Movies</title>
    <link rel="stylesheet" href="./styles-watch-later.css">
    <link rel="icon" type="images/x-icon" href="./assets/favicon.ico"> <!--Favicon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!--FA-->

</head>
<body>
  <div class="container">
    <h1 class="title">Movies Queued</h1> 
    <form action="./php/clearList.php" method="POST">
        <button id="clear-list-btn">Clear List</button>
    </form>
    <?php
session_start();

if (isset($_SESSION['userName'])) {
    $username = $_SESSION['userName'];

    $host = 'localhost';
    $dbUsername = 'root';
    $dbPassword = '';
    $dbName = 'cinewise';

    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT movieName FROM watchlater WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo '<ul>';
        while ($row = $result->fetch_assoc()) {
            echo '<li>' . ucwords($row['movieName']) . '</li>';
        }
        echo '</ul>';
    } else {
        echo '<h3>Your Watch Later list is empty.</h3>';
    }

    $conn->close();
} else {
    echo 'User is not signed in.';
}
?>

  </div>
  <a href="http://localhost/CineWise2.0/index.php" class="backArrow"> <i class="fa-solid fa-backward" style="color: #ffffff;"></i> </a>
</body>
</html>
