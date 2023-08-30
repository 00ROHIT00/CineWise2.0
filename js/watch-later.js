document.addEventListener("DOMContentLoaded", function () {
  const watchLaterList = document.getElementById("watch-later-list");
  const clearListButton = document.getElementById("clear-list-btn");

  // Retrieve watch later data from local storage
  const watchLaterData = JSON.parse(localStorage.getItem("watchLater")) || [];

  // Populate the watch later list
  watchLaterData.forEach(movie => {
    const movieItem = document.createElement("li");
    movieItem.textContent = `${movie.title}`;
    watchLaterList.appendChild(movieItem);
});

// Clear watch later list
clearListButton.addEventListener("click", function () {
    localStorage.removeItem("watchLater");
    watchLaterList.innerHTML = ""; // Clear the displayed list
    alert("Watch Later list has been cleared.");
});
});
