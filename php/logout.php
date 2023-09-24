<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logged Out!</title>
</head>
<body>
  <?php
  session_start();
  echo "Session Started";
  session_destroy();
  echo "Session Destroyed";
  header('Location: http://localhost/CineWise2.0/index.php');
  echo "User Redirected!";
  exit;
  ?>
</body>
</html>