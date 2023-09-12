
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">GAMELISTER</a>
        </div>
        <!-- Search Bar -->
        <form class="navbar-form navbar-left" role="search" action="/search" method="GET">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="q">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <!-- End Search Bar -->
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.container-fluid -->
</nav>
