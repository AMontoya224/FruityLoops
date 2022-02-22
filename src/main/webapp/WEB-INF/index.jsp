<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>
			Fruit Store
		</title>
		<link rel="stylesheet" type="text/css" href="/css/style2.css">
		<script type="text/javascript" src="js/app.js"></script>
	</head>
	<body>
	    <h1>
			Fruit Store
		</h1>
		<table>
        	<thead>
            	<tr>
	                <th>Name</th>
	                <th>Price</th>
            	</tr>
       		</thead>
        	<tbody>
				<c:forEach var="fruit" items="${fruits}">
					<tr>
                    	<td><c:out value="${fruit.getName()}"/></td>
                        <td><c:out value="${fruit.getPrice()}"/></td>
					</tr>
            	</c:forEach>
			</tbody>
		</table>
	</body>
</html>