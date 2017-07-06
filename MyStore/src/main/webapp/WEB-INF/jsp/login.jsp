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
<%@include file="header.jsp"%>
	
	 <c:if test="${isLoginError}">
         ${errMsg}
        </c:if>
        
	 <form action="login" method="post">  
            <table>  
                 
                <tr>  
                    <td><label for="email">Email</label></td>  
                    <td><input type="text" name="email" value="${user.email}"></input></td>  
                </tr>
				<tr>  
                    <td><label for="password">Password</label></td>  
                    <td><input type="password" name="password" value="${user.password}"></input></td>  
                </tr>  
                <tr>  
                    <td></td>  
                    <td><input type="submit" value="Login"></input></td>  
                </tr>  
            </table>  
        </form>
        
        <h3> Create Account</h3>
        <c:if test="${isError}">
         ${errMsg}
        </c:if>
        <form action="createaccount" method="post">  
            <table>  
                <tr>  
                    <td><label for="user-name">Name</label></td>  
                    <td><input type="text" name="name" value="${user.name}"></input></td>  
                </tr>  
                <tr>  
                    <td><label for="email">Email</label></td>  
                    <td><input type="text" name="email" value="${user.email}"></input></td>  
                </tr>  
                <tr>  
                <tr>  
                    <td><label for="password">Password</label></td>  
                    <td><input type="password" name="password"></input></td>  
                </tr>  
                <tr>
                    <td></td>  
                    <td><input type="submit" value="Create Account"></input></td>  
                </tr>  
            </table>  
        </form>
        
        
        

	<!-- <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

</body>

</html>