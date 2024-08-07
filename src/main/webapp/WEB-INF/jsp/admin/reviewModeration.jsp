<jsp:include page="../include/header.jsp"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Review Moderation</title>
</head>
<body>
<h1>Review Moderation</h1>
<c:forEach items="${reviews}" var="review">
    <div class="review">
        <p>${review.user.email}: ${review.reviewText}</p>
        <p>Rating: ${review.rating}</p>
        <p>Reviewed on: ${review.reviewDate}</p>
        <form action="admin/approveReview" method="post">
            <input type="hidden" name="reviewId" value="${review.reviewId}">
            <button type="submit">Approve</button>
        </form>
        <form action="/admin/deleteReview" method="post">
            <input type="hidden" name="reviewId" value="${review.reviewId}">
            <button type="submit">Delete</button>
        </form>
    </div>
</c:forEach>
</body>
</html>

<jsp:include page="../include/footer.jsp"/>

<jsp:include page="../include/footer.jsp"/>
