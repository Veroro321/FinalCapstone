<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>My Games</title>
</head>
<body>
<h1>My Games</h1>
<c:forEach var="game" items="${games}">
    <div>
        <h2>${game.title}</h2>
        <p>Genre: ${game.genre}</p>
        <p>Theme: ${game.theme}</p>
        <p>Release Date: ${game.releaseDate}</p>
        <p>Platform: ${game.platform}</p>
        <p>Description: ${game.description}</p>
    </div>
</c:forEach>
</body>
</html>
<jsp:include page="../include/footer.jsp" />