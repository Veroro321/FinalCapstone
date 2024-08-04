<jsp:include page="../include/header.jsp"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Details</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: black;
        }

        .container {
            display: flex;
            align-items: center;
            padding: 100px 10px 20px 10px;
            justify-content: flex-end;
        }

        .container img {
            width: 280px;
            height: auto;
            margin-left: 30px;
            border-radius: 10px;
        }

        .details {
            color: white;
            text-align: left;
            flex-grow: 1;
            margin-left: 180px;
            padding: 0px; /* Adjust padding as needed */

        }

        .details h1 {
            font-size: 3em;
            margin-bottom: 10px;
        }

        .details p {
            margin-bottom: 5px;
            font-size: 1.2em;
        }

        .button-container {
            display: flex;
            gap: 20px;
            margin-left: 10px;
        }

        .description-button {
            display: block;
            margin-top: 50px;
            padding: 15px 30px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 1em;
            cursor: pointer;
            text-align: center;
        }

        .details-reviews-wrapper {
            display: flex;
            padding: 5px;
            color: white;
        }

        .details {
            margin-top: 20px;
            margin-right: 30px;
            margin-bottom: 20px;
            margin-left: 190px;
        }

        .reviews {
            margin-top: 5px;
            margin-right: 300px;
            margin-bottom: 30px;
            margin-left: 40px;

        }

        .reviews table {
            width: 100%;
            border-collapse: collapse;
            margin-right: 90px;

        }

        .reviews th, .reviews td {
            border: 1px solid white;
            padding: 8px;
            text-align: left;
        }

        .reviews th {
            background-color: #333;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="${game.imageUrl}" alt="${game.title}">
    <div class="details">
        <h1>${game.title}</h1>
        <p>Description: ${game.description}</p>
        <div class="button-container">
            <button class="description-button" onclick="location.href='/createReview?gameId=${game.gameId}'">Write A
                Review
            </button>
            <button class="description-button" onclick="addToGames(this)">Add To Games</button>
        </div>
    </div>
</div>

<div class="details-reviews-wrapper">
    <div class="details" id="description">
        <h1>Details</h1>
        <p>Genre: ${game.genre}</p>
        <p>Theme: ${game.theme}</p>
        <p>Release Date: ${game.releaseDate}</p>
    </div>

    <div class="reviews" id="reviews">
        <h1>Reviews</h1>
        <table>
            <thead>
            <tr>
                <th>Reviewer</th>
                <th>Rating</th>
                <th>Review Text</th>
                <th>Review Date</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="review" items="${reviews}">
                <tr>
                    <td>${review.user.email}</td>
                    <td>${review.rating}/5</td>
                    <td>${review.reviewText}</td>
                    <td>${review.reviewDate}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script>
    function addToGames(button) {
        button.textContent = 'Added';
        button.classList.add('added');
        button.disabled = true;
    }
</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmW3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>

<jsp:include page="../include/footer.jsp"/>
