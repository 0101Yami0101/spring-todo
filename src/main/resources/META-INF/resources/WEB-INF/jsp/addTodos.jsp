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
     		<form method="post">
     			<h3>Enter Description</h3>
     			<input type="text" name="description" />
     			<button type="submit" class="btn btn-secondary"> Submit</button>
     		</form>
        </c:when>
        <c:otherwise>
            <h1>OOPS Please go to login page</h1>
            <a href= "/login">Login</a>
        </c:otherwise>
       </c:choose>
</body>
</html>