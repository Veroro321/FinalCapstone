<jsp:include page="../include/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Account</title>
    <link rel="stylesheet" type="text/css" href="/pub/css/account.css">
</head>
<body>

<div class="account-container">
    <h1>My Account</h1>

    <div class="profile-section">
        <h2>Profile</h2>
        <img src="${user.profile_picture}" alt="Profile Picture" class="profile-picture">
        <p>Username: ${user.username}</p>
        <p>Email: ${user.email}</p>
        <p>Name: ${user.name}</p>
    </div>

    <div class="games-section">
        <h2>Games Played</h2>
        <c:forEach var="game" items="${games}">
            <div class="game-card">
                <h3>${game.title}</h3>
                <p>Category: ${game.category}</p>
                <p>Genre: ${game.genre}</p>
                <p>Theme: ${game.theme}</p>
                <p>Platform: ${game.platform}</p>
                <p>Release Date: ${game.release_date}</p>
                <p>Description: ${game.description}</p>
            </div>
        </c:forEach>
    </div>

    <div class="challenges-section">
        <h2>Challenges Completed</h2>
        <c:forEach var="challenge" items="${challenges}">
            <div class="challenge-card">
                <p>Description: ${challenge.challenge_description}</p>
                <p>Date Completed: ${challenge.date_completed}</p>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>

<jsp:include page="../include/footer.jsp" />