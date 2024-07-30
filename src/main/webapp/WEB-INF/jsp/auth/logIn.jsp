<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<!-- Section: Design Block -->
<section class="">
    <!-- Jumbotron -->
    <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
        <div class="container">
            <div class="row gx-lg-5 align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <h1 class="my-5 display-3 fw-bold ls-tight">
                        The best offer <br />
                        <span class="text-primary">for your business</span>
                    </h1>
                    <p style="color: hsl(217, 10%, 50.8%)">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Eveniet, itaque accusantium odio, soluta, corrupti aliquam
                        quibusdam tempora at cupiditate quis eum maiores libero
                        veritatis? Dicta facilis sint aliquid ipsum atque?
                    </p>
                </div>

                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="card">
                        <div class="card-body py-5 px-md-5">
                            <form action="/account/loginProcessingURL" method="post">
                                <!-- Email input -->
                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="text" id="usernameId" name="username" class="form-control <c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.email}" />
                                    <label class="form-label" for="usernameId">Email</label>
                                </div>
                                <c:if test="${bindingResult.hasFieldErrors('email')}">
                                    <div class="text-danger">
                                        <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">
                                            ${error.defaultMessage}<br>
                                        </c:forEach>
                                    </div>
                                </c:if>

                                <!-- Password input -->
                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="password" id="passwordId" name="password" class="form-control <c:if test="${bindingResult.hasFieldErrors('password')}">is-invalid</c:if>" value="${form.password}" />
                                    <label class="form-label" for="passwordId">Password</label>
                                </div>
                                <c:if test="${bindingResult.hasFieldErrors('password')}">
                                    <div class="text-danger">
                                        <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">
                                            ${error.defaultMessage}<br>
                                        </c:forEach>
                                    </div>
                                </c:if>

                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary btn-block mb-4">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->

<jsp:include page="../include/footer.jsp" />
