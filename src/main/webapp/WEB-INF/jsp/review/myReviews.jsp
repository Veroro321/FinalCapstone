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

<div class="review-form-container">
    <div class="review-form" id="review-form">
        <h2>Create a New Review</h2>
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
    </div>
</div>


</body>
</html>

<jsp:include page="../include/footer.jsp"/>