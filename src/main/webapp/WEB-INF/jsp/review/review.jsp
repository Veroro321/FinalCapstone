<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Review</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: black !important;
        }

        .review-form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .review-form {
            color: white;
            width: 50%;
            max-width: 600px;
            padding: 20px;
            background-color: #1c1c1c;
            border-radius: 10px;
        }

        .review-form h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
        }

        .review-form form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .review-form label {
            font-size: 1.2em;
            color: white;
        }

        .review-form input, .review-form textarea {
            padding: 10px;
            border-radius: 5px;
            border: none;
            font-size: 1em;
        }

        .review-form button {
            padding: 15px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 1.2em;
            cursor: pointer;
        }

        .review-form button:hover {
            background: linear-gradient(135deg, #4a0c9b, #1f5bbf);
        }
    </style>
</head>
<body>
<jsp:include page="../include/header.jsp"/>

<div class="review-form-container">
    <div class="review-form" id="review-form">
        <h2>Create a New Review</h2>
        <form action="/createReviewSubmit" method="post">
            <div>
                <label for="gameId">Game ID:</label>
                <input type="number" id="gameId" name="gameId" value="${gameId}" required>
            </div>
            <div>
                <label for="userId">User ID:</label>
                <input type="number" id="userId" name="userId" value="${userId}" required>
            </div>
            <div>
                <label for="rating">Rating:</label>
                <input type="number" id="rating" name="rating" value="${rating}" required>
            </div>
            <div>
                <label for="reviewText">Review Text:</label>
                <textarea id="reviewText" name="reviewText" required>${reviewText}</textarea>
            </div>
            <button type="submit">Submit Review</button>
        </form>
    </div>
</div>

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
