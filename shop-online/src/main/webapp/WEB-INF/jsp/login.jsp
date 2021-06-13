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
					<i class="fa fa-user"></i> Please Login or <a href="/signup">create
						an account</a>
				</div>
				<div class="card-block" style="padding: 24px;">
					<form action="/login" method="post">
						<fieldset>
							<c:if test="${param.error}">
								<div class="alert alert-danger">Invalid username and
									password.</div>
							</c:if>

							<c:if test="${param.logout}">
								<div class="alert alert-success">You have been logged out.</div>
							</c:if>

							<div class="form-group">
								<label for="email">Email</label> <input type="email" required="required"
									class="form-control" id="email" name="email"
									placeholder="Email"/>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password" required="required"
									class="form-control" id="password" name="password"
									placeholder="Password"/>
							</div>
							 <sec:csrfInput />  

							<div class="form-check">
								<input type="checkbox" class="form-check-input" 
									id="checkRememberMe" name="checkRememberMe"/> <label
									class="form-check-label" for="checkRememberMe">Remember
									me?</label>
							</div>

							<div class="form-actions" style="margin-top: 12px;">
								<button type="submit" class="btn btn-success">Log in</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
