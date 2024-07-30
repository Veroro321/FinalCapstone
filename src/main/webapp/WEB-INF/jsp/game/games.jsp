<jsp:include page="../include/header.jsp" />

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Games</title>
    <style>
        body {
            background-color: black;
            color: white; /* Optional: Set text color to white for better readability */
        }
        .page-title {
            color: white; /* Optional: Ensure the title text is visible */
        }
        .card-body {
            background: linear-gradient(45deg, #6a11cb, #2575fc);
            color: white;

        }
        .card-title, .card-details, .card-text {
            color: white;
        }
        .register-btn {
            background-color: #05f385;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            display: block; /* Ensures button spans full width */
        }
        .card {
            border: 2px solid black; /* Add black border to each card */
            overflow: hidden; /* Ensures the gradient fills inside the border */
            border-radius: 10px; /* Rounded corners */
        }
        .section-header {
            margin-top: 30px;
            margin-bottom: 60px;
            padding: 100px; /* Optional: Add padding for better spacing */
            background: linear-gradient(135deg, #6a11cb, #2575fc); /* Linear gradient background */
            border-radius: 10px; /* Optional: Rounded corners */
            color: white; /* Ensure text is readable on the gradient background */
           <%-- background: url('https://wallpapergod.com/images/hd/4k-gaming-4000X2250-wallpaper-jcjg88bi534v13fl.webp') no-repeat center center; --%>
        }
        .search-bar {
            position: absolute;
            bottom: -100px; /* Adjust this value to position the search bar vertically */
            left: 50%;
            transform: translateX(-50%);
            width: 30%; /* Adjust the width as needed */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="section-header text-center">
        <h2>Browse our popular games here</h2>
        <form class="search-bar" method="GET" action="/games/search">
            <div class="input-group">
                <input type="text" class="form-control" name="query" placeholder="Search games...">
                <div class="input-group-append">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </div>
            </div>
        </form>
    </div>

    <div class="col-md-12 mb-4">
        <h1 class="text-white mb-5 featured-tournaments-header">Latest Games</h1>
    </div>

    <div class="row">
        <!-- Card 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://www.rocketleague.com/images/keyart/rl_evergreen.jpg" class="card-img-top" alt="Tournament 1 Image">
                <div class="card-body">
                    <h5 class="card-title">Rocket League</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> June 25, 2024</p>
                        <p><strong>Location:</strong> Discord</p>
                    </div>
                    <p class="card-text">Description of Tournament 1.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/EGS_VALORANT_RiotGames_S1_2560x1440-d9ca2c0fbaff9d80e8dedfbd726aa438" class="card-img-top" alt="Tournament 2 Image">
                <div class="card-body">
                    <h5 class="card-title">Valorant</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> July 5, 2024</p>
                        <p><strong>Location:</strong> Physical Building</p>
                    </div>
                    <p class="card-text">Description of Tournament 2.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://hips.hearstapps.com/hmg-prod/images/sw-index-1557955188.jpeg" class="card-img-top" alt="Tournament 3 Image">
                <div class="card-body">
                    <h5 class="card-title">Star Wars</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> August 15, 2024</p>
                        <p><strong>Location:</strong> Discord</p>
                    </div>
                    <p class="card-text">Description of Tournament 3.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 4 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://www.charlieintel.com/cdn-cgi/image/width=3840,quality=60,format=auto/https://editors.charlieintel.com/wp-content/uploads/2021/10/Halo-thumb.jpg" class="card-img-top" alt="Tournament 4 Image">
                <div class="card-body">
                    <h5 class="card-title">Halo</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> September 10, 2024</p>
                        <p><strong>Location:</strong> Physical Building</p>
                    </div>
                    <p class="card-text">Description of Tournament 4.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 5 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://i.ytimg.com/vi/OdRk13215zo/maxresdefault.jpg" class="card-img-top" alt="Tournament 5 Image">
                <div class="card-body">
                    <h5 class="card-title">Jedi Survivor</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> October 20, 2024</p>
                        <p><strong>Location:</strong> Discord</p>
                    </div>
                    <p class="card-text">Description of Tournament 5.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 6 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://www.superjumpmagazine.com/content/images/2022/04/3--cyberpunk2077-always-bring-a-gun-to-a-knife-fight-rgb-1920x1080-344604567.jpg" class="card-img-top" alt="Tournament 6 Image">
                <div class="card-body">
                    <h5 class="card-title">Cyberpunk</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> November 30, 2024</p>
                        <p><strong>Location:</strong> Physical Building</p>
                    </div>
                    <p class="card-text">Description of Tournament 6.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Additional Cards -->
        <!-- Card 7 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://cdn2.unrealengine.com/fortnite-og-social-1920x1080-a5adda66fab9.jpg" class="card-img-top" alt="Tournament 7 Image">
                <div class="card-body">
                    <h5 class="card-title">Fortnite</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> December 15, 2024</p>
                        <p><strong>Location:</strong> Discord</p>
                    </div>
                    <p class="card-text">Description of Tournament 7.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 8 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://sportshub.cbsistatic.com/i/2022/07/09/90808d74-1ecc-4821-b11f-96a690db5f13/apex-legends.png" class="card-img-top" alt="Tournament 8 Image">
                <div class="card-body">
                    <h5 class="card-title">Apex Legends</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> January 5, 2025</p>
                        <p><strong>Location:</strong> Physical Building</p>
                    </div>
                    <p class="card-text">Description of Tournament 8.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card 9 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://fwmedia.fandomwire.com/wp-content/uploads/2024/05/03024736/gears-of-war-6-needs-to-go-back-to-what-made-the-franchise-great-in-the-first-place-apparently.jpg" class="card-img-top" alt="Tournament 9 Image">
                <div class="card-body">
                    <h5 class="card-title">Gears of War</h5>
                    <div class="card-details">
                        <p><strong>Date:</strong> February 20, 2025</p>
                        <p><strong>Location:</strong> Discord</p>
                    </div>
                    <p class="card-text">Description of Tournament 9.</p>
                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn register-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

<jsp:include page="../include/footer.jsp" />