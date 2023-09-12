<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdStyling.css">
<html>
<%--<  <header class="offerup-header">--%>
<%--    <div class="offerup-search">--%>
<%--        <input type="text" placeholder="Search for items or locations">--%>
<%--        <button type="submit">Search</button>--%>
<%--        <button type="button" class="location-button">Location</button>--%>
<%--    </div>--%>
<%--    <div class="offerup-account">--%>
<%--        <a href="#">Sign In</a>--%>
<%--        <a href="#">Register</a>--%>
<%--    </div>--%>
<%--</header>--%>
<body>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Gamelister ads" />
</jsp:include>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div>
    <button id="sort-title">Sort by Title</button>
    <button id="sort-price">Sort by Price</button>
</div>
<div class="container">
    <div class="ads-container">
        <c:forEach var="ad" items="${ads}">
            <div class="ads-scroll">
                <h2><a href="/ads/details?id=${ad.id}" class="ad-link">${ad.title}</a></h2>
                <p class="ad-price">$${ad.price}</p>
            </div>
        </c:forEach>
    </div>
</div>

<form id="search-form">
    <div class="search">
        <input type="text" name="search" class="round" />
        <input type="submit" class="corner" value="" />
    </div>
</form>
<script src="${pageContext.request.contextPath}JS/ad-sort.js"></script>
</body>
</html>

