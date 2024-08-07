<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css"  rel="stylesheet">
    
    <title>List Todos</title>
</head>

<style>
/* Style the table */
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
<body>
    <h1 class="bg-light">Hello ${name} , this is your todos page</h1>
    
    <c:choose>
        <c:when test="${not empty name}">
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
        </c:when>
        <c:otherwise>
            <h1>OOPS Please go to login page</h1>
            <a href= "/login">Login</a>
        </c:otherwise>
    </c:choose>
     
	
	
	<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>

