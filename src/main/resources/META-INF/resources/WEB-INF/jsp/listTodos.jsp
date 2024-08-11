<%@ include file="common/header.jsp" %> 

	<style>
	
		
		table {
		    width: 100%;
		    border-collapse: collapse;
		    margin: 20px 0;
		    font-size: 16px;
		    text-align: left;
		}
		
		/* Style table headers */
		th {
		    background-color: #4CAF50;
		    color: white;
		    padding: 10px;
		}
		
		/* Style table cells */
		td {
		    border: 1px solid #ddd;
		    padding: 8px;
		}
		
		/* Add a hover effect for table rows */
		tr:nth-child(even) {
		    background-color: #f2f2f2;
		}
		
		tr:hover {
		    background-color: #ddd;
		}
		
		/* Add a border to the table */
		table, th, td {
		    border: 1px solid #ddd;
		}
		
		/* Style the table header */
		thead {
		    background-color: #f4f4f4;
		    border-bottom: 2px solid #ddd;
		}


	</style>

	<%@ include file="common/navigation.jsp" %>
    
    
        <h1 class="bg-light">Hello ${name} , this is your todos page</h1>
            <table class="container">
                <thead>
                    <tr>
               
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Done?</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                           
                            <td>${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                            <td><a href="delete-todo?id=${todo.id}" class="btn btn-danger">DELETE</a></td>
                            <td><a href="update-todo?id=${todo.id}" class="btn btn-warning">UPDATE</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="/add-todo" class="btn btn-primary">Add todo</a>

     
	
	<%@ include file="common/footer.jsp" %>

