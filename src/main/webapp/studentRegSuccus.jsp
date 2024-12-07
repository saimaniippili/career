<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
</head>
<body>
    <h2>Registration Successful!</h2>
    <p><c:out value="${message}"/></p>
    <a href="studentLogin">Login Here</a>
</body>
</html>
