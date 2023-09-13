<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title}"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>${ad.title}</h1>
    <h2>$${ad.price}</h2>
    <h3>${ad.platform}, ${ad.condition}</h3>
    <h3>Description</h3>
    <p>${ad.description}</p>
    <h3>Genres</h3>
    <c:forEach var="genre" items="${ad.genres}">
        ${genre}
    </c:forEach>
    <form method="post" action="/ads/details">
        <input type="number" value="${ad.id}" name="id" style="display: none">
        <Button class="btn btn-primary" type="submit" value="add" name="action">Add to cart</Button>
        <Button class="btn btn-primary" type="submit" value="edit" name="action">Edit Item</Button>
        <Button class="btn btn-primary" type="submit" value="delete" name="action">Delete Item</Button>
    </form>
    <p>${message}</p>
</div>

</body>
</html>