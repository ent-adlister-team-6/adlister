<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdStyling.css">

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</head>
<title>Welcome to GameLister</title>
<body>
<div class="container">
    <%--        <h1>Welcome to the Adlister!</h1>--%>
</div>
<div class="splash-container">
    <div class="splash-content">
        <h1>Welcome to GameLister</h1>
        <p>Your Ultimate Destination for Video Games</p>
        <a href="/ads">Explore Now</a>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/banner.jsp"/>
</body>
</html>
