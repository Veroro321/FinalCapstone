<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Write Review</title>
</head>
<body>
<h1>Write a Review</h1>
<form action="${pageContext.request.contextPath}/submitReview" method="post">
    <input type="hidden" name="gameId" value="${gameId}" />
    <label for="reviewText">Review:</label>
    <textarea id="reviewText" name="reviewText" rows="4" cols="50"></textarea>
    <button type="submit">Submit Review</button>
</form>
</body>
</html>


<jsp:include page="../include/footer.jsp" />