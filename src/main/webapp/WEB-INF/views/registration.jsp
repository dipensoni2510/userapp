<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<center>
	<a href="/"> Back to Home </a>
		<div class="container">
			<h1>User Register Here</h1>
			<spring:url value="/save-user" var="saveURL" />
			<form:form modelAttribute="userForm" method="post"
				action="${saveURL }">

				<table>
					<form:hidden path="id" />
					<tbody>
						<tr>
							<td><label>First Name</label></td>
							<td>
								<div class="form-group">
									<form:input type="text" path="firstname" name="name" id="name" />
								</div>
							</td>
						</tr>

						<tr>
							<td><label>Last Name</label></td>
							<td>
								<div class="form-group">
									<form:input type="text" path="lastname" name="lastname"
										id="lastname" />
								</div>
							</td>
						</tr>

						<tr>
							<td><label>Date of Birth</label></td>
							<td>
								<div class="form-group">
									<form:input type="date" path="dob" name="dob" id="dob" />
								</div>
							</td>
						</tr>

						<tr>
							<td><label>Username</label></td>
							<td>
								<div class="form-group">
									<form:input type="text" path="username" name="username"
										id="username" />
								</div>
							</td>
						</tr>

						<tr>
							<td><label>Email</label></td>
							<td>
								<div class="form-group">
									<form:input type="text" path="email" name="email" id="email" />
								</div>
							</td>
						</tr>
						<tr>
							<td><label>Password</label></td>
							<td>
								<div class="form-group">
									<form:input type="password" path="password" name="password"
										id="password" />
								</div>
							</td>
						</tr>

						<tr>
							<td></td>
							<td>
								<button type="submit" class="btn btn-primary">Save</button>
							</td>
						</tr>
					</tbody>

				</table>
			</form:form>

		</div>
	</center>
</body>
</html>