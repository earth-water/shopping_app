<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="webjars/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<meta charset="ISO-8859-1">
<title>shop online</title>
</head>
<body>

	<div class="container">
		<div
			style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-user"></i> Sign Up
				</div>
				<div class="card-block" style="padding: 24px;">
		
					<form:form  modelAttribute="user" action="/signup" method="post" >
						<fieldset>
						
							<div class="form-group">
								<label for="firstName">FirstName</label> 
								<form:input type="text" required="required"
									class="form-control" id="firstName" name="firstName" path="firstName"
									placeholder="First Name"/>
							</div>
							
							<div class="form-group">
								<label for="lastName">SecondName</label> 
								<form:input type="text" required="required"
									class="form-control" id="lastName" name="lastName" path="lastName"
									placeholder="Last Name"/>
							</div>
							
							<div class="form-group">
								<label for="email">Email</label> 
								<form:input type="email" required="required"
									class="form-control" id="email" name="email" path="email"
									placeholder="Email"/>
							</div>

							<div class="form-group">
								<label for="password">Password</label>
								 <form:input type="password" required="required"
									class="form-control" id="password" name="password" path="password"
									placeholder="Password"/>
							</div>
							
							<input type="hidden" class="form-control" id="role" name="role" path="role"
									value="USER"/>

							<div class="form-actions" style="margin-top: 12px;">
								<button type="submit" class="btn btn-success">Sign Up</button>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
