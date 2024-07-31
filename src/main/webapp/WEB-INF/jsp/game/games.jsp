<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Games</title>
    <style>
        body {
            background-color: black;
            color: white; /* Optional: Set text color to white for better readability */
        }
        .page-title {
            color: white; /* Optional: Ensure the title text is visible */
        }
        .card-body {
            background: linear-gradient(45deg, #6a11cb, #2575fc);
            color: white;

        }
        .card-title, .card-details, .card-text {
            color: white;
        }
        .register-btn {
            background-color: #05f385;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            display: block; /* Ensures button spans full width */
        }
        .card {
            border: 2px solid black; /* Add black border to each card */
            overflow: hidden; /* Ensures the gradient fills inside the border */
            border-radius: 10px; /* Rounded corners */
        }
        .section-header {
            margin-top: 30px;
            margin-bottom: 60px;
            padding: 100px; /* Optional: Add padding for better spacing */
            background: linear-gradient(135deg, #6a11cb, #2575fc); /* Linear gradient background */
            border-radius: 10px; /* Optional: Rounded corners */
            color: white; /* Ensure text is readable on the gradient background */
           <%-- background: url('https://wallpapergod.com/images/hd/4k-gaming-4000X2250-wallpaper-jcjg88bi534v13fl.webp') no-repeat center center; --%>
        }
        .search-bar {
            position: absolute;
            bottom: 500px; /* Adjust this value to position the search bar vertically */
            left: 50%;
            transform: translateX(-50%);
            width: 20%; /* Adjust the width as needed */
            z-index: 1000; /* Ensure it is above other content */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="section-header text-center">
        <h2>Browse Our Popular Games Here</h2>
        <form class="search-bar" method="GET" action="/games/search">
            <div class="input-group">
                <input type="text" class="form-control" name="search" placeholder="Search games...">
                <div class="input-group-append">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </div>
            </div>
        </form>
    </div>

    <div class="col-md-12 mb-4">
        <h1 class="text-white mb-5 featured-tournaments-header">Latest Games</h1>
    </div>

    <div class="row">
        <!-- Loop through the games and create a card for each -->
        <c:forEach items="${games}" var="game">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="${game.imageUrl}" class="card-img-top" alt="${game.title} Image">
                    <div class="card-body">
                        <h5 class="card-title">${game.title}</h5>
                        <div class="card-details">
                            <p><strong>Release Date:</strong> ${game.releaseDate}</p>
                            <p><strong>Genre:</strong> ${game.genre}</p>
                            <p><strong>Platform:</strong> ${game.platform}</p>
                        </div>
                        <p class="card-text">${game.description}</p>
                        <div class="d-flex justify-content-center">
                            <a href="/games/${game.gameId}" class="btn register-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

<jsp:include page="../include/footer.jsp" />