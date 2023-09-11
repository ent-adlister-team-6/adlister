
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/ads">Adlister</a>

        <!-- Search Bar -->
        <form class="form-inline my-2 my-lg-0" action="/search" method="GET" style="width: 100%;">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" name="q" style="width: 100%;">
<%--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
        </form>
        <!-- End Search Bar -->

        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
        </ul>
    </div>
</nav>

