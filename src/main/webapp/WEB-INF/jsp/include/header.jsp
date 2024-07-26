<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Level Up</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            background: linear-gradient(45deg, #6a11cb 0%, #2575fc 100%);
        }

        .navbar-logo a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 22px;
            font-weight: bold;
        }

        .navbar-menu {
            list-style-type: none;
            margin: 0;
            padding: 0;
            float: right;
        }

        .navbar-menu li {
            float: left;
        }

        .navbar-menu li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar-menu li a:hover {
            background-color: #575757;
            color: white;
        }

        @media screen and (max-width: 600px) {
            .navbar-menu li {
                float: none;
            }
        }



    </style>
    </style>
</head>
<body>
<nav class="navbar">
    <div class="navbar-logo">
        <a href="${pageContext.request.contextPath}/index.jsp">Level Up</a>
    </div>
    <ul class="navbar-menu">
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/users.jsp">Users</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/games.jsp">Games</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/challenges.jsp">Challenges</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/gaming_gear.jsp">Gaming Gear</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/review.jsp">Reviews</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/signup.jsp">Sign Up</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/login.jsp">Log In</a>
        </li>
    </ul>
</nav>
</body>
</html>
