<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dizcuzz</title>
</head>
<body>
<%
// Check if user is logged in
Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
if (isLoggedIn != null && isLoggedIn) {
    // User is logged in, redirect to homepage
    response.sendRedirect("homepage.jsp");
} else {
    // User is not logged in, redirect to login page
    response.sendRedirect("login.jsp");
}
%>
</body>
</html>