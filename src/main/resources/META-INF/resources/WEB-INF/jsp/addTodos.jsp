<%@ include file="common/header.jsp" %>

	<%@ include file="common/navigation.jsp" %>
	
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
	<script type="text/javascript">
	  $('#targetDate').datepicker({
	        format: 'yyyy-mm-dd'
	    });
	</script>
	
	<%@ include file="common/footer.jsp" %>
