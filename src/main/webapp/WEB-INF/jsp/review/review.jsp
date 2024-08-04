
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="../include/header.jsp" />

<!DOCTYPE html>
<html>
<head>
    <title>Create Review</title>
</head>
<body>
<h2>Create a New Review</h2>

<c:if test="${not empty errorMessage}">
    <div class="errors">
        <p>${errorMessage}</p>
    </div>
</c:if>

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
</body>
</html>

<jsp:include page="../include/footer.jsp" />

