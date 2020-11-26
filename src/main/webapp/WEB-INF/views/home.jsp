<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form>
		<center>
		<a href="add-user"> Add New User </a>
			<h1>All User Details</h1>
			<table border="2">
				<thead>
					<tr>
						<td><b>Employee First Name + Last Name</b></td>
						<td><b>Date of Birth</b></td>
						<td><b>User Name</b></td>
						<td><b>Password</b></td>
						<td><b>Email</b></td>
						<td><b>Edit</b></td>
						<td><b>Delete</b></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${userList }" var="user">
						<tr>
							<td>${user.firstname }  ${user.lastname }</td>
							<td>${user.dob }</td>
							<td>${user.username }</td>
							<td>${user.password}</td>
							<td>${user.email }</td>
							<td><spring:url
									value="/updateuser/${user.id }" var="updateURL" />
								<a class="btn btn-primary" href="${updateURL }" role="button">Update</a>
							</td>
							<td><spring:url
									value="/deleteuser/${user.id }" var="deleteURL" />
								<a class="btn btn-primary" href="${deleteURL }" role="button">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</center>
	</form>
</body>
</html>