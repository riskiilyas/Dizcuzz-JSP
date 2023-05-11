<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Dizcuzz � Change Password</title>


    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>

    <!-- Custom styles for this template -->
    <link href="styles/change_password.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.js"></script>

</head>

<body class="text-center">
    <section class="section-contents">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="images/icon.png" alt="" width="30" height="30" class="d-inline-block align-text-top" style="margin-right: 1rem">
                    Dizcuzz
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/users">Users</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Profile
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/profile">View Profile</a></li>
                                <li><a class="dropdown-item" href="/change_password">Change Password</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/logout">Logout</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/new_post">New Post</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <main class="form-signin">
		    <form method="POST" action="/change_password">
		        <%-- JSP equivalent of @csrf --%>
		        <input type="hidden" name="_csrf" value="<%= request.getAttribute("_csrf") %>" />
		        <img class="mb-4" src="images/logo.png" alt="" width="72" height="72">
		        <h1 class="h3 mb-3 fw-normal">Change Password</h1>
		        <div class="form-floating">
		            <input type="password" class="form-control <%= request.getAttribute("invalid") != null ? "is-invalid" : "" %>" id="floatingInput" placeholder="Password" name="oldpassword">
		            <label for="floatingInput">Old Password</label>
		            <%-- JSP equivalent of @error('invalid') --%>
		            <% if (request.getAttribute("invalid") != null) { %>
		            <div class="invalid-feedback"><%= request.getAttribute("invalid") %></div>
		            <% } %>
		        </div>
		           <div class="form-floating">
			        <input type="password" class="form-control <%= request.getAttribute("mismatch") != null ? "is-invalid" : "" %>" id="floatingPassword" placeholder="Password" name="newpassword">
			        <label for="floatingPassword">New Password</label>
			        <%-- JSP equivalent of @error('mismatch') --%>
			        <% if (request.getAttribute("mismatch") != null) { %>
			        <div class="invalid-feedback"><%= request.getAttribute("mismatch") %></div>
			        <% } %>
			    </div>
			
			    <div class="form-floating">
			        <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="cnewpassword">
			        <label for="floatingPassword">Confirm New Password</label>
			    </div>
			
			    <button class="w-100 btn btn-lg btn-primary" type="submit">Change Password</button>
			    <p class="mt-5 mb-3 text-muted">&copy; 2023 Dizcuzz</p>
			</form>
		</main>   
    </section>
</body>

</html>