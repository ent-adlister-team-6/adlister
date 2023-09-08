<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control" type="number">
            </div>
            <div class="form-group">
                <label for="new-condition">New</label>
                <input id="new-condition" name="condition" class="form-control" type="radio" value="new">
                <label for="used-condition">Used</label>
                <input id="used-condition" name="condition" class="form-control" type="radio" value="used">
            </div>
            <div class="form-group">
                <label for="platform">Platform</label>
                <input id="platform" name="platform" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label>Genres</label>
                <br>
                <input id="genre1" name="genre1" class="form-control" type="checkbox" value="action">
                <label for="genre1">Action</label>
                <input id="genre2" name="genre2" class="form-control" type="checkbox" value="adventure">
                <label for="genre2">Adventure</label>
                <input id="genre3" name="genre3" class="form-control" type="checkbox" value="arcade">
                <label for="genre3">Arcade</label>
                <input id="genre4" name="genre4" class="form-control" type="checkbox" value="rpg">
                <label for="genre4">RPG</label>
                <input id="genre5" name="genre5" class="form-control" type="checkbox" value="fighting">
                <label for="genre5">Fighting</label>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
