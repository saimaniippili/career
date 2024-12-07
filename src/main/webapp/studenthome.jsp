<%@page import="org.hibernate.Session"%>
<%@page import="com.klef.jfsd.project.StudentCarrerProject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    // Retrieve the student object from the session
    Student student = (Student) session.getAttribute("student"); 
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
    h2 {
        text-align: center;
        color: #444;
        margin-bottom: 20px;
    }
    .navigation {
        margin-top: 30px;
        text-align: center;
    }
    .navigation a {
        display: inline-block;
        margin: 10px 15px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background 0.3s;
    }
    .navigation a:hover {
        background-color: #0056b3;
    }
    .error-message {
        color: red;
        text-align: center;
        font-weight: bold;
        margin-top: 20px;
    }
</style>
</head>
<body>
<%@include file="studentrnav.jsp" %><br/><br/>

<div class="container">
    <% if (student != null) { %>
        <h2>Welcome, <%= student.getName() %>!</h2>

        <div class="navigation">
            <a href="takeAssessment.jsp">Take Career Assessment</a>
            <a href="viewResults.jsp">View Results</a>
            <a href="exploreCareers.jsp">Explore Career Options</a>
        </div>
    <% } else { %>
        <p class="error-message">Session expired or student data not found. Please log in again.</p>
    <% } %>
</div>

</body>
</html>
