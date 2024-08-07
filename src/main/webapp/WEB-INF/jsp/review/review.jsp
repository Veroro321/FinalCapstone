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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Rubik:wght@300..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        * {
            box-sizing: border-box;
        }

        input[type=text], input[type=number], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }

        input[type=submit], button[type=submit] {
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }

        input[type=submit]:hover, button[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: white;
            padding: 20px;
        }

        .row::after {
            content: "";
            display: table;
            clear: both;
        }

        @media screen and (max-width: 600px) {
            input[type=submit], button[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }
    </style>
</head>
<body>
<jsp:include page="../include/header.jsp"/>
<div class="container">
    <h2>Create a New Review</h2>
    <form action="/createReviewSubmit" method="post">
        <div class="row">
            <div class="col-25">
                <label for="rating">Rating</label>
            </div>
            <%--            <div class="col-75">--%>
            <%--                <input type="number" id="rating" name="rating" min="1" max="5" required>--%>
            <%--            </div>--%>
            <p>Please select your favorite Web language:</p>
            <input type="radio" id="rating1" name="rating" value="1">
            <label for="rating1">1</label><br>

            <input type="radio" id="rating2" name="rating" value="2">
            <label for="rating2">2</label><br>

            <input type="radio" id="rating3" name="rating" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating4" name="rating" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating5" name="rating" value="5">
            <label for="rating5">5</label>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="reviewText">Review Text</label>
            </div>
            <div class="col-75">
                <textarea id="reviewText" name="reviewText" required></textarea>
            </div>
        </div>
        <input type="hidden" name="gameId" value="${gameId}">
        <input type="hidden" name="userId" value="${userId}">
        <br>
        <div class="row">
            <button type="submit">Submit Review</button>
        </div>
    </form>
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
