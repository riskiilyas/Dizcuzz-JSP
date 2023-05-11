<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Dizcuzz · Login</title>


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
    <link href="styles/login.css" rel="stylesheet">
</head>

<body class="text-center">
   <main class="form-signin">
    <form method="POST" action="/login">
        <%-- Use the following line to add a CSRF token to the form --%>
        <input type="hidden" name="_csrf" value="<%=request.getAttribute("org.apache.catalina.ASYNC_SUPPORTED")%>">
            <img class="mb-4" src="images/logo.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
    <% if (session.getAttribute("success") != null) { %>
        <div class="alert alert-success">
            <%= session.getAttribute("success") %>
        </div>
    <% } %>
    <% if (session.getAttribute("failed") != null) { %>
        <div class="alert alert-danger" role="alert">
            Wrong Password or Email!
        </div>
    <% } %>
    <div class="form-floating">
        <input type="email" class="form-control <% if (request.getAttribute("javax.servlet.error.exception") != null) { %> is-invalid <% } %>"
               value="<%String mEmail = (String) session.getAttribute("email"); out.print((mEmail==null) ? "" : mEmail);%>" id="floatingInput" placeholder="name@example.com" name="email">
        <label for="floatingInput">Email address</label>
        <% if (request.getAttribute("javax.servlet.error.exception") != null) { %>
            <div class="invalid-feedback">
                <% if (request.getAttribute("javax.servlet.error.exception").toString().contains("email")) { %>
                    <% request.getAttribute("javax.servlet.error.message"); %>
                <% } else { %>
                    <%-- Show default error message if the exception is not related to the email field --%>
                    Invalid email address format.
                <% } %>
            </div>
        <% } %>
    </div>

    <div class="form-floating">
        <input type="password" class="form-control <% if (request.getAttribute("javax.servlet.error.exception") != null) { %> is-invalid <% } %>"
               value="<%String pass = (String) session.getAttribute("password"); out.print((pass==null) ? "" : pass);%>" id="floatingPassword" placeholder="Password" name="password">
        <label for="floatingPassword">Password</label>
        <% if (request.getAttribute("javax.servlet.error.exception") != null) { %>
            <div class="invalid-feedback">
                <% if (request.getAttribute("javax.servlet.error.exception").toString().contains("password")) { %>
                    <% request.getAttribute("javax.servlet.error.message"); %>
                <% } else { %>
                    <%-- Show default error message if the exception is not related to the password field --%>
                    Password must be at least 6 characters.
                <% } %>
            </div>
        <% } %>
    </div>

    <p>Didn't have account? <a href="register.jsp">Sign up</a></p>

    <div class="checkbox mb-3 mx-auto">
        <label for="remember">
            <input type="checkbox" name="remember" value="1"> Remember me
        </label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2023 Dizcuss</p>
</form>
       </main>



    
</body>

</html>
