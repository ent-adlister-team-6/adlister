<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Profile - ${user.username}" />
    </jsp:include>
    <link href="path-to-your-custom-css.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="profile-header">
        <h1>Welcome, ${user.username}!</h1>
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

    <div class="profile-actions">
        <!-- Include buttons or links for user actions, such as editing the profile -->
        <a href="/edit-profile" class="btn btn-primary">Edit Profile</a>
        <a href="/ads/create" class="btn btn-primary">Add Ad</a>
    </div>
</div>
</body>
</html>
