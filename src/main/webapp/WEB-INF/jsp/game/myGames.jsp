<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Games</title>
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
            background-color: black;
            color: white;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        .game-gallery {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px;
        }

        .game-card {
            display: flex;
            background: black;
            border-radius: 10px;
            text-decoration: none;
            color: white;
            width: 100%;
            max-width: 800px;
            transition: transform 0.3s, box-shadow 0.3s;
            padding: 15px;
        }

        .game-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
        }

        .game-image {
            width: 200px;
            height: auto;
            border-radius: 10px;
            margin-right: 20px;
        }

        .game-details {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .game-title {
            font-size: 1.5em;
            font-weight: bold;
        }

        .game-description {
            margin-top: 10px;
        }

        .delete-form {
            margin-top: 10px;
        }

        .delete-button {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 10px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: red;
        }

    </style>
</head>
<body>

<h1>My Game Library</h1>
<div class="game-gallery">
    <c:forEach items="${myGames}" var="userGame">
        <c:set var="game" value="${userGame.game}"/>
        <div class="game-card">
            <a href="/games/details?id=${game.gameId}">
                <img src="${game.imageUrl}" alt="${game.title}" class="game-image">
            </a>
            <div class="game-details">
                <span class="game-title">${game.title}</span>
                <p class="game-description">${game.description}</p>
                <form action="/games/delete" method="post" class="delete-form">
                    <input type="hidden" name="gameId" value="${game.gameId}"/>
                    <button type="submit" class="delete-button">Delete</button>
                </form>
            </div>
        </div>
    </c:forEach>
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
<jsp:include page="../include/footer.jsp"/>
