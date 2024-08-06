<jsp:include page="../include/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Review</title>
</head>
<body>
<h1>Edit Review</h1>
<form action="/editReviewSubmit" method="post">
    <input type="hidden" name="reviewId" value="${review.reviewId}">
    <div>
        <label for="gameId">Game</label>
        <select id="gameId" name="gameId">
            <c:forEach items="${games}" var="game">
                <option value="${game.gameId}" <c:if test="${game.gameId == review.game.gameId}">selected</c:if>>
                        ${game.title}
                </option>
            </c:forEach>
        </select>
    </div>
    <div>
        <label for="rating">Rating</label>
        <input type="number" id="rating" name="rating" value="${review.rating}" min="1" max="10" required>
    </div>
    <div>
        <label for="reviewText">Review Text</label>
        <textarea id="reviewText" name="reviewText" required>${review.reviewText}</textarea>
    </div>
    <button type="submit">Save Changes</button>
</form>
</body>
</html>

<jsp:include page="../include/footer.jsp"/>
