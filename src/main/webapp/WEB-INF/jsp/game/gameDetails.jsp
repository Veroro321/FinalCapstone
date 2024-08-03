<jsp:include page="../include/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Details</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: black;
            /* Add a linear gradient if desired */
            /* background-image: linear-gradient(to right, #000000, #333333); */
        }

        .container {
            display: flex;
            align-items: center;
            padding: 100px 10px 20px 100px;
            justify-content: flex-end; /* Pushes content to the right */
        }

        .container img {
            width: 280px;
            height: auto;
            margin-left: 30px;
            border-radius: 10px; /* Adds rounded corners */
        }

        .details {
            color: white;
            text-align: left;
            flex-grow: 1; /* Ensures details take up remaining space */
            margin-left: 80px; /* Adds a 20px margin to the left */
        }

        .details h1 {
            font-size: 3em;
            margin-bottom: 10px;
            color: white;


        }

        .details p {
            margin-bottom: 5px;
            font-size: 1.2em;
        }


        .image-gallery img {
            width: 300px; /* Adjust image width */
            height: auto;
            margin: 20px; /* Add spacing between images */
            border-radius: 30px; /* Rounded corners for the button */
            transition: transform 0.3s ease; /* Smooth transition effect */
        }

        .image-gallery img:hover {
            transform: scale(1.1); /* Enlarge image on hover */
        }

        .game-description p {

            font-size: 1.2em;
            line-height: 1.5; /* Increases line spacing for readability */
            color: white;
        }

        .game-description {
            justify-content: center; /* Optional: Center images */
            margin-left: 280px; /* Aligns description with the right edge of the image */
            max-width: calc(100% - 300px); /* Ensures it does not exceed the available width */
            margin-top: 0px; /* Reduced top margin to move closer to the image */
            color: white;
            padding: 0px;
            border-radius: 10px; /* Rounded corners */
        }
        .description-button {
            display: block; /* Ensure button is on its own line */
            margin-top: 50px; /* Remove margin-top */
            padding: 15px 30px; /* Increase padding to make the button larger */
            background: linear-gradient(135deg, #6a11cb, #2575fc); /* Light purple color */
            color: white;
            border: none;
            border-radius: 30px; /* Rounded corners for the button */
            font-size: 1em;
            cursor: pointer; /* Pointer cursor on hover */
            text-align: center; /* Center text inside button */
        }

        .button-container {
            display: flex;
            gap: 20px; /* Adjust the gap between buttons as needed */
            margin-left: -80px;
        }

        /*.image-gallery {*/
        /*    display: flex;*/
        /*    flex-wrap: wrap;*/
        /*    justify-content: center; !* Optional: Center images *!*/
        /*    margin-top: 20px; !* Adjust spacing as needed *!*/
        /*}*/

        .details p {
            margin-bottom: 5px;
            font-size: 1.2em;
            color: white;

        }

        .description-video-container {
            display: flex;
            margin: 20px;
            gap: 1px; /* Adds space between description and video */
        }

        #description {
            color: white;
            padding: 20px;
            margin: 5px 0px 0px 230px;
            flex: 1;


        }
        #video{
            flex: 1;
            border-radius: 10px;
            overflow: hidden; /* Ensures rounded corners are visible */
            width: 1200px;
            height: 300px; /* Fixed height */
            margin: 5px 300px 0px 0px;

        }
        #video iframe {
            width: 100%;
            height: 100%;
        }

    </style>

    <script>
        function addToGames(button) {
            button.textContent = 'Added';
            button.classList.add('added');
            button.disabled = true;
        }
    </script>
</head>
<body>
<div class="container">
    <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_9KJm-maHyRnvmWU67LlnCsUqOFSZWCQFi6emCtbnGUZWlG_JMp0U7GvEBI9_JyfpRuhG
" alt="Game Image">
    <div class="details">
        <h1>${game.title}</h1>
<%--        <p>Genre: ${game.genre}</p>--%>
<%--        <p>Theme: ${game.theme}</p>--%>
<%--        <p>Release Date: ${game.releaseDate}</p>--%>
<%--        <p>Platform: ${game.platform}</p>--%>
        <p>
           Description: ${game.description}
        </p>
        <div class="details">
            <div class="button-container">
                <button class="description-button">Write A Review</button>
                <button class="description-button" onclick="addToGames(this)">Add To Games</button>
            </div>


        </div>

    </div>


</div>

<div class="description-video-container">
    <div class="details" id="description">
        <h1> Details </h1>
        <p>Genre: ${game.genre}</p>
        <p>Theme: ${game.theme}</p>
        <p>Release Date: ${game.releaseDate}</p>
        <p>Platform: ${game.platform}</p>
    </div>

    <div class="video-section" id="video">
        <iframe src="https://www.youtube.com/watch?v=2FLA_6A_i5A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>
</div>


<%--<section class="game-description">--%>
<%--    <p>--%>
<%--        ${game.description}--%>
<%--    </p>--%>
<%--</section>--%>

<%--<section class="image-gallery">--%>
<%--    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz_ZSO-KV3KUz5dEtLz-ckfu51kmu2FQc6tg&s" alt="Image 2">--%>
<%--    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN_BULJHg6NZgL2xWUDHRn86XYeaYpJY0T4g&s" alt="Image 3">--%>
<%--    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjapkXBLRsW4NJ1PqR38BjKfTsUEzo_VTQw&s" alt="Image 3">--%>
<%--</section>--%>


</body>
</html>



<jsp:include page="../include/footer.jsp" />