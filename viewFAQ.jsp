<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	
	 <!-- Required meta tags -->
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/StaticFiles/BootStrap/css/bootstrap.min.css"/>">
	
	<!-- Custom CSS(s) -->
	<%-- <link rel="stylesheet" href="<c:url value="/resources/StaticFiles/css/discussion-forum-index.css"/>"> --%>
	

	<style type="text/css">
		
		.searchForm{
			margin:20px 10px;
			text-align: center;
		}

		.searchForm input{
			width: 400px;
		}
		.question{
			background-color: #f5f5f5;
			padding: 10px;
			border-radius: 5px;
			border:1px solid #ddd;
			margin:10px 10px 0 10px;
			font-weight: bold;
			cursor: pointer;
		}
		.answer{
			display: none;
			padding: 10px;
			border-left:1px solid #ddd;
			border-right:1px solid #ddd;
			border-bottom:1px solid #ddd;
			margin:0 10px;
			border-bottom-left-radius: 5px;
			border-bottom-right-radius: 5px;
		}
		.changeBorderCorners{
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
		}
		.noResult{
			text-align:center;
		}
		h2{
			text-align:center;
		}
	</style>
</head>
<body>
	<h2>FAQs(Frequently Asked Questions)</h2>
	<div class="container">
		<div class="row">
	    	<div class="col-md-8 col-md-offset-2">
	    		<springForm:form class="searchForm" action="viewFAQ">
					<input type="text" name="searchString" placeholder="Search for any question.." />
					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</springForm:form>
	    	</div>
	  	</div>
	</div>
	
	<c:forEach var="faq" items="${AllFAQ}">
		<div class="container">
			<div class="row">
		    	<div class="col-md-8 col-md-offset-2">
		    		<div class="question">
						${faq.question}		
					</div>
	
					<div class="answer">
						${faq.answer}
						<c:if test="${!searchString.equals('') && searchString != null}">
							<c:if test="${faq.answer.toLowerCase().contains(searchString.toLowerCase())}">
								<div class="hidden"></div>
								
							</c:if>
							
						</c:if>
					</div>	
		    	</div>
		  	</div>
		  </div>
	</c:forEach>
	
	<div class="noResult">
		<c:if test="${AllFAQ.size()==0}">No Result found</c:if>
	</div>
	
	
	<!-- jQuery -->
    <script src="<c:url value="/resources/StaticFiles/js/jquery-3.3.1.min.js"/>"></script>

	<!-- Bootstrap JS -->
  	<script src="<c:url value="/resources/StaticFiles/BootStrap/js/bootstrap.min.js"/>"></script>
  	
	
	<script type="text/javascript">
		$(document).ready(function(){
		    $(".question").click(function(){
				$(this).next().toggle(200);
				$(this).toggleClass("changeBorderCorners");
		    });
		   
		   $(".hidden").parents("div").show();
		});

	</script>
</body>
</html>