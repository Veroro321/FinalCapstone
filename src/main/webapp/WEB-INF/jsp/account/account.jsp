<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: white;
    }
    .profile-header {
        background-color: black;
        padding: 20px;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        height: 250px; /* Adjust height as needed */
    }
    .profile-header img {
        border-radius: 20%;
        width: 300px;
        height: 300px;
        object-fit: cover;
        margin-bottom: 10px;
        margin-top: 250px; /* Move the picture down */
        margin-left: 50px; /* Move the picture down */
    }
    .profile-header h1 {
        margin: 0;

    }
</style>

<div class="profile-header">
    <img src="https://cdn.openart.ai/published/kFACksuHREe950JGs8Eh/AWUl0YkI_mrun_raw.jpg" alt="Profile Picture">
</div>


<jsp:include page="../include/footer.jsp" />