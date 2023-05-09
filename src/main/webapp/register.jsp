<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Dizcuzz · Register</title>


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
    <form action="/register" method="POST">
        <%-- Add CSRF token here --%>
        <input type="hidden" name="_csrf" value="<%=request.getAttribute("org.apache.catalina.ASYNC_SUPPORTED")%>" />
        <img class="mb-4" src="images/logo.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 fw-normal">Sign Up</h1>

        <div class="form-floating">
            <input type="text" class="form-control <%= request.getAttribute("javax.servlet.error.request_uri") == null ? "" : "is-invalid" %>" id="floatingInput" placeholder="Example123" name="username" value="${param.username}">
            <label for="floatingInput">Username</label>
        </div>
        <%-- Add validation error message here --%>
        <% if(request.getAttribute("javax.servlet.error.request_uri") != null) { %>
        <div class="invalid-feedback">${error.username}</div>
        <% } %>

        <div class="form-floating">
            <input type="text" class="form-control <%= request.getAttribute("javax.servlet.error.request_uri") == null ? "" : "is-invalid" %>" id="floatingInput" placeholder="Example123" name="fullname" value="${param.fullname}">
            <label for="floatingInput">Fullname</label>
        </div>
        <%-- Add validation error message here --%>
        <% if(request.getAttribute("javax.servlet.error.request_uri") != null) { %>
        <div class="invalid-feedback">${error.fullname}</div>
        <% } %>

        <div class="form-floating">
            <input type="email" class="form-control <%= request.getAttribute("javax.servlet.error.request_uri") == null ? "" : "is-invalid" %>" id="floatingInput" placeholder="name@example.com" name="email" value="${param.email}">
            <label for="floatingInput">Email address</label>
        </div>

        <%-- Add validation error message here --%>
        <% if(request.getAttribute("javax.servlet.error.request_uri") != null) { %>
        <div class="invalid-feedback">${error.email}</div>
        <% } %>

        <div class="form-floating">
            <input type="password" class="form-control <%= request.getAttribute("javax.servlet.error.request_uri") == null ? "" : "is-invalid" %>" id="floatingPassword" placeholder="Password" name="password">
            <label for="floatingPassword">Password</label>
        </div>

        <%-- Add validation error message here --%>
        <% if(request.getAttribute("javax.servlet.error.request_uri") != null) { %>
        <div class="invalid-feedback">${error.password}</div>
        <% } %>

        <p>Already have an account? <a href="login.jsp">Sign in</a></p>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Sign Up</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2023 Dizcuzz</p>
    </form>
</main>


</body>

</html>