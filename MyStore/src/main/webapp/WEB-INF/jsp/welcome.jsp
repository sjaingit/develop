<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link href="/css/home.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>

<%@include file="header.jsp"%>
	
	<div class="container_hero">
	<a href="/page1" title="page2"><img width="1220" height="200" src="/images/HeroImage.jpg" alt="image1" style="display: inline;"></a>
	</div>
	
	<div class="container">
		<div class=column-center>
			<a href="/page1" title="page1"><img width="350" height="293" src="/images/HeroImage.jpg" alt="image1" style="display: inline;"></a>
		</div>
		
		<div class="column-left">	
			<a href="/page1" title="page1"><img width="350" height="293" src="/images/HeroImage.jpg" alt="image1" style="display: inline;"></a>
		</div> 
		
		<div class="column-right">	
			<a href="/page1" title="page1"><img width="350" height="293" src="/images/HeroImage.jpg" alt="image1" style="display: inline;"></a>
		</div> 
		
	</div>
</body>

</html>