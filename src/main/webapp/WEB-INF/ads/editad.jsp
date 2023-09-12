<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit ${ad.title}" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Editing Ad</h1>
    <form action="/ads/edit" method="post">
        <div class="form-group">
            <%--        HIDE THE ID FIELD LATER--%>
            <input type="number" value="${ad.id}" name="id">
            <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="number" value="${ad.price}">
        </div>
        <div class="form-group">
            <label for="new-condition">New</label>
            <input id="new-condition" name="condition" type="radio" value="new">
            <label for="used-condition">Used</label>
            <input id="used-condition" name="condition" type="radio" value="used">
        </div>
        <div class="form-group">
            <label for="platform">Platform</label>
            <input id="platform" name="platform" class="form-control" type="text" value="${ad.platform}">
        </div>
        <div class="form-group">
            <label>Genres</label>
            <br>
            <label for="genre1">Action</label>
            <input id="genre1" name="genre1" type="checkbox" value="action">
            <label for="genre2">Adventure</label>
            <input id="genre2" name="genre2" type="checkbox" value="adventure">
            <label for="genre3">Arcade</label>
            <input id="genre3" name="genre3" type="checkbox" value="arcade">
            <label for="genre4">RPG</label>
            <input id="genre4" name="genre4" type="checkbox" value="rpg">
            <label for="genre5">Fighting</label>
            <input id="genre5" name="genre5" type="checkbox" value="fighting">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>

