<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@include file="/WEB-INF/views/DiscussionForum/menu.jsp" %>
<!doctype html>
<html lang="en">


<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/BootStrap/css/bootstrap.min.css"/>">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- Custom CSS(s) -->
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/css/discussion-forum-index.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/css/discussion-forum-categories.css"/>">



<title>It's Quiz Time</title>
<link href="<c:url value="/resources/instruction.css" />"
	rel="stylesheet">

</head>
<style>

.align {
	margin: 50px;
	margin-left: 880px;
}
</style>


<body>


	<form action="/project/start" target="print_popup"
		onsubmit="window.open('about:blank','print_popup','toolbar=no' ,'fullscreen=yes')">
		<!--  <div class="row">
       <div class="col-md-2 col-centered text-center"> -->


<div class="col-md-12 jumbotron bg-info title-card">
				<h2 class="title-card-heading">INSTRUCTIONS</h2>
				<br>
			<p class="col-md-10 col-md-offset-2 title-card-desc">
			<div>
				<h4>Total number of questions : 20.</h4>
				<h4>Each question carry 2 marks, no negative marks.</h4>
				<h4>DO NOT refresh the page.</h4>
				<h4>All the best :-).</h4>
				<input type="text" name="category" value="${category}" hidden="true">
			</div>
			<br>
			<!-- <div class="col-md-12 text-center">
				<input type="submit" value="submit" class="btn btn-primary">

			</div> -->
			</p>
			
			
		</div>
		
<div class="col-md-4 parentCard text-center ">
	<a href="#">
	<div class="card " style="background-color:#81C4FF">
		
  <div class="card-body">
  <br>
    <br>
    <h3>FinnOne</h3>  
  </div>
 <div class="card-footer">Click to Start</div>
	</div></a>
</div>
<div class="col-md-4 parentCard text-center ">
	<a href="#">
<div class="card " style="background-color:#16588E">

		<div class="card-body">
		<br>
		  <br>
    <h3>FinnOne Neo</h3>  
  </div>
<div class="card-footer">Click to Start</div>
	</div></a>
</div>
<div class="col-md-4 parentCard text-center ">
	<a href="#">
<div class="card " style="background-color:#E7222E">
	
	<div class="card-body">
<br>
<br>
    <h3>Java</h3>  
  </div>
  <div class="card-footer">Click to Start</div>

</div></a>
</div>

		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
	</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%--  <%@include file="/WEB-INF/views/DiscussionForum/menu.jsp" %> --%>
<!doctype html>
<html lang="en">


<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/BootStrap/css/bootstrap.min.css"/>">
<!-- Font awesome -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/StaticFiles/Font-Awesome/css/font-awesome.min.css'/>">
	
	<!-- Custom CSS(s) -->
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/css/discussion-forum-index.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/StaticFiles/css/discussion-forum-categories.css"/>">



<title>It's Quiz Time</title>
<link href="<c:url value="/resources/instruction.css" />"
	rel="stylesheet">

</head>
<style>

.align {
	margin: 50px;
	margin-left: 880px;
}
</style>


<body>


	
		<!--  <div class="row">
       <div class="col-md-2 col-centered text-center"> -->


<div class="col-md-12 jumbotron bg-info title-card">
     <p>Think you can pass our FinnOne tests?</p><br>
     <p>
TEST YOUR KNOWLEDGE to see if you are a FinnOne whiz..
     </p>
				<h2 class="title-card-heading">INSTRUCTIONS</h2>
				<br>
			<p class="col-md-10 col-md-offset-2 title-card-desc">
			<div>
				<h4>Total number of questions : 20.</h4>
				<h4>Each question carry 2 marks, no negative marks.</h4>
				<h4>DO NOT refresh the page.</h4>
				<h4>All the best :-).</h4>
				
			</div>
			<br>
			
			</p>
			
			
		</div>
		<c:forEach items="${quizCategory}" var="quizcategory"> 
		<springForm:form action="${pageContext.request.contextPath}/start/${quizcategory.categoryName}" target="print_popup"
		onsubmit="window.open('about:blank','print_popup','toolbar=no' ,'fullscreen=yes')">
		<div class="col-md-4 parentCard text-center ">
		
	<div class="card " style="background-color:${quizcategory.categoryBackgroundColor};">
		
  <div class="card-body">
  <br>
    <br>
    <h3>${quizcategory.categoryName}</h3>  
  </div>
 <div class="card-footer"><input type="submit" value="Click to Start" style="border: none; background-color:${quizcategory.categoryBackgroundColor}; "></div>
	</div>
</div>
</springForm:form>
		</c:forEach>
<!-- <div class="col-md-4 parentCard text-center ">
	<a href="#">
	<div class="card " style="background-color:#81C4FF">
		
  <div class="card-body">
  <br>
    <br>
    <h3>FinnOne</h3>  
  </div>
 <div class="card-footer">Click to Start</div>
	</div></a>
</div>
<div class="col-md-4 parentCard text-center ">
	<a href="#">
<div class="card " style="background-color:#16588E">

		<div class="card-body">
		<br>
		  <br>
    <h3>FinnOne Neo</h3>  
  </div>
<div class="card-footer">Click to Start</div>
	</div></a>
</div>
<div class="col-md-4 parentCard text-center ">
	<a href="#">
<div class="card " style="background-color:#E7222E">
	
	<div class="card-body">
<br>
<br>
    <h3>Java</h3>  
  </div>
  <div class="card-footer">Click to Start</div>

</div></a>
</div> -->

		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
	
</body>
</html>
