<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Gallery</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
        }
        .game-gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
            width: 100%;
        }
        .game-card {
            background-color: #000000;
            border-radius: 15px;
            overflow: hidden;
            width: calc(20% - 10px);
            box-shadow: 0 4px 8px rgba(254, 239, 239, 0.3);
            position: relative;
        }
        .game-card img {
            width: 100%;
            border-bottom: 2px solid #444;
        }
        .card-title {
            position: absolute;
            bottom: 10px;
            left: 10px;
            color: white;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 5px;
            border-radius: 5px;
        }
        .game-card:hover {
            transform: scale(1.1);
            transition: transform 0.3s ease-in-out;
        }
        .game-card::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }
        .game-card:hover::after {
            opacity: 1;
        }
        .search-container {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }
        .search-bar {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px 10px;
            font-size: 16px;
            margin-left: 600px;
        }
        .search-button {
            padding: 10px 15px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;

        }
        h1 {
            text-align: center;

        }

        .header-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            margin-top: 100px;
            margin-left: 150px;
        }
        <%--.section-header {--%>
        <%--    margin-top: 30px;--%>
        <%--    margin-bottom: 60px;--%>
        <%--    padding: 100px; /* Optional: Add padding for better spacing */--%>
        <%--    background: linear-gradient(135deg, #6a11cb, #2575fc); /* Linear gradient background */--%>
        <%--    border-radius: 10px; /* Optional: Rounded corners */--%>
        <%--    color: white; /* Ensure text is readable on the gradient background */--%>
        <%--&lt;%&ndash; background: url('https://wallpapergod.com/images/hd/4k-gaming-4000X2250-wallpaper-jcjg88bi534v13fl.webp') no-repeat center center; &ndash;%&gt;--%>


    </style>
</head>
<body>

<%--<div class="container mt-5">--%>
<%--    <div class="section-header text-center">--%>
<%--        <h2 style="font-size: 2.5rem;">Browse Our Most Popular Games</h2>--%>
<%--    </div>--%>

<div class="header-container">
    <h1>Latest Games</h1>
    <div class="search-container">
        <form method="GET" action="/games/search">
            <input type="text" value="${search}" class="search-bar" name="search" placeholder="Search Games...">
            <button type="submit" class="search-button">Search</button>
        </form>
    </div>
</div>

<div class="game-gallery">
    <c:forEach items="${games}" var="game">
        <a href="/games/details?id=${game.gameId}" class="game-card">
            <img src="${game.imageUrl}" alt="${game.title}">
        </a>
    </c:forEach>
</div>

</body>
</html>

