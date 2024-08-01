<jsp:include page="../include/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Game Details</title>
    <style>

        body {
            background-color: black;
            color: white; /* Optional: Set text color to white for better readability */
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px;
        }
        .game-details {
            display: flex;
            margin-bottom: 20px;
        }
        .game-details img {
            width: 300px;
            height: auto;
            margin-right: 20px;
        }
        .game-info {
            display: flex;
            flex-direction: column;
        }
        .game-info h2 {
            margin: 5px 0;
        }
        .description, .video-section {
            width: 100%;
            margin: 20px 0;
        }
        .video-section iframe {
            width: 100%;
            height: 500px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="game-details">
        <img src="${game.imageUrl}" alt="${game.title} Image">
        <div class="game-info">
            <h2>Title: ${game.title}</h2>
            <h2>Genre: ${game.genre}</h2>
            <h2>Theme: ${game.theme}</h2>
            <h2>Release Date: <fmt:formatDate value="${game.releaseDate}" pattern="yyyy-MM-dd"/></h2>
            <h2>Platform: ${game.platform}</h2>
        </div>
    </div>
    <div class="description">
        <h2>Description</h2>
        <p>${game.description}</p>
    </div>
    <div class="video-section">
        <h2>Gameplay Video</h2>
        <iframe src="https://www.youtube.com/embed/exampleVideoId?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </div>
</div>
</body>
</html>



<jsp:include page="../include/footer.jsp" />