<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdStyling.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gamelister Ads</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Include your custom CSS file for additional styling -->
    <link rel="stylesheet" href="your-custom.css">
</head>
<style>
    /* Apply a background color to odd-numbered cards */
    .card:nth-child(odd) {
        background-color: #f5f5f5; /* Choose your desired color */
    }

    /* Apply a different background color to even-numbered cards */
    .card:nth-child(even) {
        background-color: #e0e0e0; /* Choose your desired color */
    }
</style>
<body>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Gamelister ads"/>
</jsp:include>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div>

    <form action="/search" method="post">
        <button id="sort-title" type="submit" name="search" value="title">Sort by Title</button>
    </form>
    <form action="/search" method="post">
        <button id="sort-price" type="submit" name="search" value="price">Sort by Price</button>
    </form>
    <!-- Main content container -->
    <div class="container mt-4">
        <div class="row">
            <!-- Loop through your ad items -->
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-4 mb-4">
                    <div class="card rounded">
                        <div class="card-body">
                            <h5 class="card-title">${ad.title}</h5>
                            <p class="card-text">$${ad.price}</p>
                            <a href="/ads/details?id=${ad.id}" class="btn btn-primary">Details</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- End ad loop -->
        </div>
    </div>
    <!-- Include Bootstrap JS for any additional functionality you need -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>     <jsp:include page="/WEB-INF/partials/banner.jsp" />
<%--<jsp:include page="/WEB-INF/partials/banner.jsp">--%>
</html>