<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css"  rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
<title>Add todo</title>
</head>
<body>
	
	<div class="container">
	
	  <c:choose>
        <c:when test="${not empty name}">
        	<h2>Enter Todo Details</h2>
     		<form:form method="post" modelAttribute="todo">
     			<fieldset class="mb-3">	     		
	     			<form:label path="description">Description</form:label>
	     			<form:input type="text"  path="description" required="required"/>  
	     			<form:errors type="text" path="description" cssClass="text-warning"/>    			
     			</fieldset>
     			
     			<fieldset class="mb-3">	     		
	     			<form:label path="targetDate">Target Date</form:label>
	     			<form:input type="text"  path="targetDate" required="required"/>  
	     			<form:errors type="text" path="targetDate" cssClass="text-warning"/>    			
     			</fieldset>
     			
     			
     			<form:input type="hidden" path="id" />
     			<form:input type="hidden" path="done" />
     			<button type="submit" class="btn btn-secondary"> Submit</button>  
     			
     		</form:form>
        </c:when>
        <c:otherwise>
            <h1>OOPS Please go to login page</h1>
            <a href= "/login">Login</a>
        </c:otherwise>
       </c:choose>
	</div>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript">
	  $('#targetDate').datepicker({
	        format: 'yyyy-mm-dd'
	    });
	</script>
</body>
</html>