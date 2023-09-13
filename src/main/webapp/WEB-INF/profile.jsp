<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/css/Profile.css" rel="stylesheet">

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Profile - ${user.username}"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</head>
<body>
<div class="container">
    <div class="profile-header">
        <h1>${user.username}</h1>
        <img src="path-to-user-avatar.jpg" alt="User Avatar">
    </div>

    <div class="profile-info">
        <h2>About Me</h2>
        <p>${user.bio}</p>
    </div>

    <div class="profile-details">
        <h2>Profile Details</h2>
        <ul>
            <li><strong>Email:</strong> ${user.email}</li>
            <li><strong>Location:</strong> ${user.location}</li>
            <!-- Add more user details as needed -->
        </ul>
    </div>

    <!-- Add more sections for user activity, posts, or other relevant information -->
    <% if (session.getAttribute("user") == request.getAttribute("user")) { %>
    <div class="profile-actions">
        <!-- Include buttons or links for user actions, such as editing the profile -->
        <a href="/edit-profile" class="btn btn-primary">Edit Profile</a>
        <a href="/ads/create" class="btn btn-primary">Add Ad</a>
    </div>
    <%}%>

    <div class="user-ads">
        <h3>${user.username}'s Ads</h3>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><a href="/ads/details?id=${ad.id}">${ad.title}</a></h2>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
