<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Results</title>
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;1,200&display=swap');
    * {
      margin : 0;
      border : 0;
      box-sizing : border-box;
    }
    body {
      background-color : #0c1216;
      color : #f4f8fb;
      font-family: 'Poppins', sans-serif;
    }
    .header{
      display : grid;
      place-items : center;
      border-bottom : #f4f8fb 2px solid;
      margin-bottom : 5px;
    }

    .container {
      display : flex;
      flex-direction: row;
      flex-wrap: wrap;
    }

    /*MOVIE CARD STYLES*/
    .box-container {
  border : 2px solid #a3c5db;
  width : 250px;
  margin : 10px;
}

.movie-title{
  border-bottom : #4b8db9 1px solid;
  display : grid;
  place-items : center;
  font-size : 20px;
}

.movie-description {
  padding : 7px;
  text-align : center;
  border-bottom : #4b8db9 1px solid;
  font-size : 13px;
}

nav ul {
  display : flex;
  justify-content : space-around;
  list-style : none;
  padding : 6px;
  border-bottom : #4b8db9 1px solid;
  font-size : 15px;
}

nav a {
color : white;
  text-decoration : none;
  transition : .2s ease-in-out;
}

a:hover {
  color : #a3c5db;
}

.rating {
  padding-left : 5px;
}

.footer {
  display : flex;
  justify-content : space-between;
  padding-left : 20px;
  padding-right : 20px;
  padding-top : 5px;
  font-size : 15px;
}
/*MOVIE STYLES END*/
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
  while ($row = $result->fetch_assoc()) {
     echo '<div class="box-container">';
     echo '<H3 class="movie-title">'. ucwords($row['movieName']) .' ('. ucwords($row['genre']) .')</H3>';

     echo '<p class="movie-description">'. ucfirst($row['description']) .'</p>';

     echo '<nav>';
     echo '<ul>';
     echo '<li><a href="'. $row['link'] .'" target="_blank">Watch Now!</a></li>';
     echo '</ul>';
     echo ' </nav>';
     echo '<div class="footer">';
     echo ' <p class="rating title">Rating <br>'. ucwords($row['rating']) .'</p>';
     echo '<p class="release title">Release <br>'. ucwords($row['releaseYear']) .'</p>';
     echo '  </div>';
     echo '</div>';  
} 

}
else {
  echo "No results found.";
}

$conn->close();
?>
 </div>
</body>
</html>