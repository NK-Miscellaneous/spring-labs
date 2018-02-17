<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="<c:url value="/resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/styles/pivotal.css" />" />
	<title>security: Login</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a title="Spring IO" href="http://www.spring.io"> 
							<img src="<c:url value="/resources/images/spring-trans-dark.png"/>" height="50"/>
						</a>
					</div>
					<div>
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="http://www.pivotal.io">
									<img alt="Pivotal" title="Pivotal" height="20" src="<c:url value="/resources/images/pivotal-logo-600.png" />" />
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		
		<div class="row">

			<h1>Login</h1>
			
			
			
			<c:if test="${param.error != null}">
				<div class="alert alert-danger"> Incorrect username and/or password </div>
			</c:if>
			
			<!--  Submit form by posting to myself -->
			<c:url value="/login" var="loginUrl"/>
			<form:form action="${loginUrl}" method="post" role="form" class="form-horizontal">
				<fieldset>
					<div class="form-group">
						<label class="control-label col-sm-2" for="username">
							Username
						</label>
						<div class="col-sm-4"> 
							<input type="text" id="username" name="username" class="form-control" /> 
						</div>
						<div class="col-sm-6"></div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="password">
							Password
						</label>
						<div class="col-sm-4"> 
							<input type="password" id="password" name="password" class="form-control" />
						</div>
						<div class="col-sm-6"></div>
					</div>
					
					<div class="form-group"> 
			    		<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">
								Login
							</button>
						</div>
					</div>
				</fieldset>
			</form:form>

		</div>
		
		<div><a href="<c:url value="/index.html" />">Return to Home Page</a></div>
		
	</div>
</body>

</html>
