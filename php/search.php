<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Results</title>
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
    * {
      margin : 0;
      border : 0;
      box-sizing : border-box;
    }
    body {
      background-color : #0c1216;
      color : #f4f8fb;
    }

    .header {
      display : grid;
      place-items : center;
      font-size : 25px;
      font-family: 'Roboto Slab', serif;
    }
  </style>
</head>
<body>
 <div class="header">
  <h1>Search Resuls</h1>
 </div>
 <div class="container">
<?php 
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'cinewise';

$conn = new mysqli($host,$username,$password,$database);

if($conn ->connect_error)
{ 
  die("Connection Failed!".$conn->connect_error);
} 

$searchInput = $_POST['searchInput'];
$lowerCaseSearchInput = strtolower($_POST['searchInput']);
$query = "SELECT * FROM moviedata WHERE movieName like '%$lowerCaseSearchInput%' OR genre like '%$lowerCaseSearchInput%'";
$result = $conn->query($query);

if ($result->num_rows > 0) {
  echo "<ul>";
  while ($row = $result->fetch_assoc()) {
     echo "<li>{$row['movieName']} - Genre: {$row['genre']} - Rating: {$row['rating']}</li>";
  }
  echo "</ul>";
} else {
  echo "No results found.";
}

$conn->close();
?>
 </div>
</body>
</html>