<jsp:include page="../include/header.jsp"/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>My Reviews</h1>
<div class="review-list">
    <c:forEach items="${reviews}" var="review">
        <div class="review-card">
            <h2>${review.game.title}</h2>
            <p>Rating: ${review.rating}</p>
            <p>${review.reviewText}</p>
            <p>Reviewed on: ${review.reviewDate}</p>
            <form action="/deleteReview" method="post">
                <input type="hidden" name="reviewId" value="${review.reviewId}">
                <button type="submit">Delete</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>

<jsp:include page="../include/footer.jsp"/>