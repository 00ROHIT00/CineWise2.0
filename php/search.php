<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Results</title>
  <link rel="icon" type="images/x-icon" href="./assets/favicon.ico">    <!--FAVICON ICON-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!--FA-->
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;1,200&display=swap');
    * {
      margin : 0;
      border : 0;
      box-sizing : border-box;
      scrollbar-width : none;
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
  padding : 5px;
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

.arrow 
{
  position: absolute;
  top : 7px;
  left : 7px;
  font-size : 25px;
  transition: .2s ease-in-out;
    -webkit-transition: .2s ease-in-out;
    -moz-transition: .2s ease-in-out;
    -ms-transition: .2s ease-in-out;
    -o-transition: .2s ease-in-out;
}

.arrow:hover {
 transform : scale(110%);
}

.watch-later-button {
  background : transparent;
  color : white;
  font-size : 14px;
  border : white 1px solid;
  padding : 2px;
  transition : .3s ease-in-out;
}

.watch-later-button:hover {
  background-color : white;
  color : black;
  curson : grab;
}

.watch-now {
  border : white 1px solid;
  padding : 2px;
  transition : .3s ease-in-out;
  font-size : 14px;
}
.watch-now:hover {
  background-color : white;
  color : black;
}
/*MOVIE STYLES END*/

/*NO RESULTS PAGE STYLES*/
.error-container {
  background-color : #0c1216;
  color : white;
  height : 100vh;
  margin : 0 auto;
  font-size : 30px;
}

span {
color : red;
}
/*NO RESULTS PAGE END*/

  </style>
</head>
<body>
 <div class="header">
  <h1>Search Results</h1> <br>
 </div>
 <div class="arrow">
  <a href="http://localhost/CineWise2.0/index.php"> <i class="fa-solid fa-backward" style="color: #ffffff;"></i> </a>
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
$query = "SELECT * FROM moviedata WHERE movieName like '%$lowerCaseSearchInput%' OR genre like '%$lowerCaseSearchInput%' OR releaseYear like '%$lowerCaseSearchInput%'";
$result = $conn->query($query);

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
     echo '<div class="box-container">';
     echo '<H3 class="movie-title">'. ucwords($row['movieName']) .' ('. ucwords($row['genre']) .')</H3>';

     echo '<p class="movie-description">'. ucfirst($row['description']) .'</p>';

     echo '<nav>';
     echo '<ul>';
     echo '<li><a href="'. $row['link'] .'" target="_blank" class="watch-now">Watch Trailer!</a></li>';
     echo '<button class="watch-later-button" data-movie-name="' . $row['movieName'] . '">Watch Later!</button>';
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
  echo '<div class="error-container">';
  echo '<div class="error-heading">No <span>Results</span> Found!</div>';
  echo "</div>";
}

$conn->close();
?>
 </div>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const watchLaterButtons = document.querySelectorAll(".watch-later-button");

        watchLaterButtons.forEach(button => {
    button.addEventListener("click", function () {
        const movieName = button.getAttribute("data-movie-name"); // Change this line


                // Send an AJAX request to add the movie to the watch later list
                const xhr = new XMLHttpRequest();
                xhr.open("POST", "./watchlater.php", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Handle the response, e.g., show a success message
                        console.log(xhr.responseText);

                        // Optionally, you can provide visual feedback to the user
                        button.disabled = true;
                        button.textContent = "Added!";
                        button.style.backgroundColor = "#ccc";
                    }
                };
                console.log("Movie Name:", movieName);
xhr.send(`movieName=${movieName}`);
            });
        });
    });
</script>
</body>
</html>