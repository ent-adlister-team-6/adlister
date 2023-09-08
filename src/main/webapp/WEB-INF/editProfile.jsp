<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Edit Your Profile</h1>
    <form action="/edit-profile" method="POST">
        <div class="form-group">
            <label for="bio">Bio</label>
            <textarea id="bio" name="bio" class="form-control">${user.bio}</textarea>
        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <input id="location" name="location" class="form-control" type="text" value="${user.location}">
        </div>
        <input type="submit" class="btn btn-primary" value="Save Changes">
    </form>
</div>
</body>
</html>
