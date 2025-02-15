<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .navbar-custom {
            background: linear-gradient(white, white);
        }

        .gradient-bar {
            height: 20px;
            background: linear-gradient(45deg, #6a11cb, #2575fc);
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
    <a class="navbar-brand" href="#">Level Up</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="/account/create-account" id="navbarDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Account
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Log In</a>
                    <a class="dropdown-item" href="/account/create-account">Sign Up</a>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/profile">Account <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/games">Games<span class="sr-only">(current)</span></a>
            </li>

            <sec:authorize access="isAuthenticated()">
                <li class="nav-item active">
                    <a class="nav-link" href="/games/myGames">My Games<span class="sr-only">(current)</span></a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li class="nav-item active">
                    <a class="nav-link" href="/myReviews">My Reviews<span class="sr-only">(current)</span></a>
                </li>
            </sec:authorize>

            <!-- Login and Logout links based on authentication status -->
            <sec:authorize access="!isAuthenticated()">
                <li class="nav-item active">
                    <a class="nav-link" href="/account/loginPageUrl">Log In</a>
                </li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li class="nav-item active">
                    <a class="nav-link" href="/login/logout">Log Out</a>
                </li>
                <li class="nav-item active">
                    <span class="nav-link"><sec:authentication property="name"/></span>
                </li>
            </sec:authorize>


            <sec:authorize access="hasAnyAuthority('ADMIN')">
                <li class="nav-item active">
                    <a class="nav-link" href="/admin/reviewModeration">Admin Dashboard<span
                            class="sr-only">(current)</span></a>
                </li>
            </sec:authorize>

            <sec:authorize access="!isAuthenticated()">
                <li class="nav-item active">
                    <a class="nav-link" href="/account/create-account">Sign Up</a>
                </li>
            </sec:authorize>

        </ul>
        <%--        <form class="form-inline my-2 my-lg-0">--%>
        <%--            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
        <%--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
        <%--        </form>--%>
    </div>
</nav>

<div class="gradient-bar"></div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmW3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
