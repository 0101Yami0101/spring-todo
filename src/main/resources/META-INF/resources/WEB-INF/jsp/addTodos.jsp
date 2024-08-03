<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	  <c:choose>
        <c:when test="${not empty name}">
     		<h1>Add new Todo Here</h1>
     		
     		///
        </c:when>
        <c:otherwise>
            <h1>OOPS Please go to login page</h1>
            <a href= "/login">Login</a>
        </c:otherwise>
       </c:choose>
</body>
</html>