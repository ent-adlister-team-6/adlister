<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
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
            <input id="new-condition" name="condition" type="radio" value="new">
            <label for="used-condition">Used</label>
            <input id="used-condition" name="condition" type="radio" value="used">
        </div>
        <div class="form-group">
            <label for="platform">Platform</label>
            <input id="platform" name="platform" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label>Genres</label>
            <br>
            <div style="display: flex; flex-direction: row">
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre1">Action</label>
                    <input id="genre1" name="genre1" type="checkbox" value="action">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre2">Adventure</label>
                    <input id="genre2" name="genre2" type="checkbox" value="adventure">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre3">Arcade</label>
                    <input id="genre3" name="genre3" type="checkbox" value="arcade">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre4">RPG</label>
                    <input id="genre4" name="genre4" type="checkbox" value="rpg">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre5">Fighting</label>
                    <input id="genre5" name="genre5" type="checkbox" value="fighting">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre6">Platformer</label>
                    <input id="genre6" name="genre6" type="checkbox" value="platformer">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre7">Strategy</label>
                    <input id="genre7" name="genre7" type="checkbox" value="strategy">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre8">Sports</label>
                    <input id="genre8" name="genre8" type="checkbox" value="sports">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre9">Puzzle</label>
                    <input id="genre9" name="genre9" type="checkbox" value="puzzle">
                </div>
                <div style="border: solid 3px dodgerblue; border-radius: 5px; padding: 5px; margin: 3px">
                    <label for="genre10">Platformer</label>
                    <input id="genre10" name="genre10" type="checkbox" value="shooter">
                </div>
            </div>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
