<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html>
<html>
<head>
<base href="/">

<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	    		rel="stylesheet">
	    		<link href="webjars/font-awesome/4.7.0/css/font-awesome.min.css"
	    		rel="stylesheet">
	    		
<meta charset="ISO-8859-1">
<title>shop online</title>
</head>
<body>


	<!-- Fragment #2 : Navbar contains nav links -->
	<div >
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
			<a class="navbar-brand" href="#">Online Shopping</a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" 
						href="/index"><i class="fa fa-home mr-2"></i>Home</a></li>
						
						
						<sec:authorize access="hasRole('ROLE_ADMIN')">  
					<li  class="nav-item"><a
						class="nav-link" href="/admin/index">Admin</a></li>
						</sec:authorize>  
						
						<sec:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_ADMIN')">  
					<li 
						class="nav-item"><a class="nav-link" href="/manager/index">Management</a></li>
				</sec:authorize>  
				
				</ul>
				
				
				
				<ul class="nav my-auto mr-4">
					<li class="nav-item"><a class="text-info" href="/profile/cart-product"><i class="fa fa-shopping-cart " ></i></a></li>
				</ul>
				<form:form class="form-inline my-2 my-lg-0"  method="post"
					action="/logout">
					<sec:authorize access="isAuthenticated()">
					<button 
						class="btn btn-outline-danger my-2 my-sm-0 btn-sm" type="submit">Logout</button>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					<button  href="/login"
						class="btn btn-outline-info my-2 my-sm-0 btn-sm" type="submit">Login</button>
						</sec:authorize>
				</form:form>
			</div>
			</div>
		</nav>
	</div>

