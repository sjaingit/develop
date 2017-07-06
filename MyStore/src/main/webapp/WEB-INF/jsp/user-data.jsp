<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Index Page</title> 
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
	<script type="text/javascript" src="/js/main.js"></script>
	<img src="/images/f_connect.png" alt="Smiley face" height="42" width="100"> -->

</head>
<body>

<nav class="navbar navbar-inverse">
		<div class="container">
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/login">LOGIN</a></li>
					<li><a href="/about">ABOUT</a></li>
					<li><a href="/home">HOME</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	     <table>  
        <tr>  
            <td><h4>User Name: </h4></td>  
            <td><h4 th:text="${user.name}"></h4></td>  
        </tr>  
        <tr>  
            <td><h4>Email ID: </h4></td>  
            <td><h4 th:text="${user.email}"></h4></td>  
        </tr>  
    </table> 

</body>

</html>