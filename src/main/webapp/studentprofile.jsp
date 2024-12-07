<%@page import="com.klef.jfsd.project.StudentCarrerProject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    // Retrieve the student object from the session
    Student s = (Student) session.getAttribute("student"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        color: #333;
    }
    .container {
        width: 80%;
        margin: auto;
        padding: 20px;
        background: #ffffff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }
    h3 {
        text-align: center;
        color: #444;
        margin-bottom: 20px;
    }
    .profile {
        font-size: 16px;
        line-height: 1.8;
        margin: 10px 0;
    }
    .error-message {
        color: red;
        text-align: center;
        font-weight: bold;
        margin-top: 20px;
    }
    a {
        color: #0066cc;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<%@include file="studentrnav.jsp" %><br/><br/>

<div class="container">
    <h3>My Profile</h3>
    <% if (s != null) { %>
        <div class="profile">
            <p><strong>ID:</strong> <%= s.getId() %></p>
            <p><strong>Name:</strong> <%= s.getName() %></p>
            <p><strong>Gender:</strong> <%= s.getGender() %></p>
            <p><strong>Date of Birth:</strong> <%= s.getDataofbirth() %></p>
            <p><strong>Email:</strong> <%= s.getEmail() %></p>
            <p><strong>Location:</strong> <%= s.getLocation() %></p>
            <p><strong>Contact:</strong> <%= s.getContact() %></p>
        </div>
    <% } else { %>
        <p class="error-message">Session expired or student data not found. Please log in again.</p>
    <% } %>
</div>

</body>
</html>
