<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css"  rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
	
	  <c:choose>
        <c:when test="${not empty name}">
     		<form:form method="post" modelAttribute="todo">
     			<h3>Enter Description</h3> 
     			<form:input type="text"  path="description" required="required"/>  
     			<form:input type="hidden" path="id" />
     			<form:input type="hidden" path="done" />
     			<button type="submit" class="btn btn-secondary"> Submit</button>  
     			
     			<form:errors type="text" path="description" cssClass="text-warning"/>
     		</form:form>
        </c:when>
        <c:otherwise>
            <h1>OOPS Please go to login page</h1>
            <a href= "/login">Login</a>
        </c:otherwise>
       </c:choose>
	</div>
	
</body>
</html>