 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=1.0">

<!-- Bootstrap CSS -->
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous"> -->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<title>Welcome</title>




<script>
	function myFunctionLogout() {

		var r = confirm("Are You Sure You Want To LogOut?");
		if (r == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
  	
  	<div style="z-index: 999;">
		<a href="${pageContext.request.contextPath}/home">	
			<img src="<c:url value="/resources/neologo.png" />" alt="not images" 
						height="60" align="left" style="margin-top: -7px;">
		</a>
		<div style="text-align: right;">		
			<h4 style="margin-bottom: 0; margin-right: 80px;">Welcome <sec:authentication property="principal.username" /></h4>
			
	   		<a href="${pageContext.request.contextPath}/j_spring_security_logout" class="btn btn-info btn-md" onclick="return myFunctionLogout();" style="margin-right: 40px;"> 
	     		<span class="glyphicon glyphicon-log-out" ></span> Log out
	        </a>
        </div>
  	</div>

 

 <style>
.side-stick-menu-left
{
	left: -271px;
    background: #fff;
    position: fixed;
    min-width: 270px;
    max-width: 270px;
    margin-left: 0!important;
    z-index: 200;
    -webkit-box-shadow: 1px 0 0 0 #eaedf3;
    box-shadow: 1px 0 0 0 #e7e7e7;
    border-radius: 4px;
    -webkit-transition: left .2s;
    -o-transition: left .2s;
    transition: left .2s;
    z-index: 999;
    /* top: 79px;
    height: calc(100vh - 52px); */
    top: 0;
    height: 100%;
}
.side-stick-menu-right
{
	right: -271px;
    background: #fff;
    position: fixed;
    min-width: 270px;
    max-width: 270px;
    margin-left: 0!important;
    z-index: 200;
    -webkit-box-shadow: 1px 0 0 0 #eaedf3;
    box-shadow: 1px 0 0 0 #e7e7e7;
    border-radius: 4px;
    -webkit-transition: left .2s;
    -o-transition: left .2s;
    transition: right .2s;
    z-index: 999;
    /* top: 79px;
    height: calc(100vh - 52px); */
    top: 0;
    height: 100%;
}
.side-menu-left-show {
	left: 0;
}
.side-menu-right-show {
	right: 0;
}

.side-menu-open-button
{
    background-color: #3f51b5;
    color: #fff;
    font-size: 20px;
    position: absolute;
    border: 1px solid #3f51b5;
    border-radius: 0;
    z-index: 200;
    padding: 0.4em;
    vertical-align: middle;
    top: 50%;
    cursor: pointer;
}
.side-menu-open-button-left
{
    left: 270px;
    border-left-color: #eee;
}
.side-menu-open-button-right
{
    right: 269px;
    border-right-color: #eee;
}
.discussion-forum-body-inactive
{
	opacity: .7 !important;
    z-index: 900 !important;
}
.side-stick-menu-backdrop {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: -900;
    background-color: #000;
    opacity: 0;
}
</style>



<div id="side-menu-left" class="side-stick-menu-left">
	<div class="leftsection">
		<ul class="list-group" >
  			<li class="list-group-item active" style="background-color:orange;"><h5><b>Loyalty Program</b></h5></li>
  			<li class="list-group-item"><a href="${pageContext.request.contextPath}/balance" id="myBtnredBAL" target="iframe_a" >Balance </a></li>
  			<li class="list-group-item"><a href="${pageContext.request.contextPath}/redeem"  id="myBtnredRED" target="iframe_a">Redeem?</a></li>
  			<li class="list-group-item"><a href="${pageContext.request.contextPath}/howTo"  id="myBtnredHTE" target="iframe_a" >How to earn?</a></li>
		</ul>
		<ul class="list-group" >
		  	<li class="list-group-item active" style="background-color:Green;"><h5>FinnOne Tools</h5></li>
		  	<li class="list-group-item"><a href=#>Bussiness Mapping</a></li>
		  	<li class="list-group-item"><a href=#>Data Migration</a></li>
		  	<li class="list-group-item"><a href=#>Rol Calculator</a></li>
     		<li class="list-group-item"><a href=#>Schedule validator</a></li>
      		<li class="list-group-item"><a href=#>Service Packs</a></li>
		</ul>
		<ul class="list-group">
  			<li class="list-group-item active" style="background-color:Black;"><h5>Learn@Will</h5></li>
  			
  			<li class="list-group-item"><a href="https://learnatwill.nucleussoftware.com">Online Learning</a></li>
		</ul>
		
     </div>
       
	<div class="side-menu-open-button side-menu-open-button-left">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	</div> 
	
</div>

<div id="side-menu-right" class="side-stick-menu-right">
	<div class="leftsection">
		<ul class="list-group">
			<li class="list-group-item active" style="background-color: Grey;"><h5>Your Contributions</h5></li>
			<li class="list-group-item"><a href="${pageContext.request.contextPath}/ProductFeedback" id="myBtnredPF" target="iframe_a">Product feedback</a></li>
			<li class="list-group-item"><a href="${pageContext.request.contextPath}/forum">Discussion Board</a></li>
			<li class="list-group-item"><a href="${pageContext.request.contextPath}/contributeArticleForm" id="myBtnredAR" target="iframe_a">Contribute article</a></li>
		</ul>
		<ul class="list-group">
			<li class="list-group-item active" style="background-color: Blue;"><h5>Knowledge Corner</h5></li>
			<li class="list-group-item"><a href="${pageContext.request.contextPath}/viewAllArticles" target="iframe_a" id="viewAllArticleBtn">Articles</a></li>
			<!-- <li class="list-group-item"><a href=#>Discussions</a></li> -->
			<li class="list-group-item"><a href="${pageContext.request.contextPath}/startQuiz/">Test Your Knowledge</a></li>
		</ul>
     </div>
       
	<div class="side-menu-open-button side-menu-open-button-right">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	</div> 
	
</div>




<script type="text/javascript">
$(document).ready(function() {

	$('body').append('<div class="side-stick-menu-backdrop"></div>');
	
	$('.side-menu-open-button').click(function(){
		$('#side-menu-left').toggleClass('side-menu-left-show');
		$('#side-menu-right').toggleClass('side-menu-right-show');
		$('.side-stick-menu-backdrop').toggleClass('discussion-forum-body-inactive');
		$('.side-menu-open-button > span').toggleClass('glyphicon-chevron-right');
		$('.side-menu-open-button > span').toggleClass('glyphicon-chevron-left');
	});
	
	$('.side-stick-menu-backdrop').click(function() {
		if($('#side-menu-left').attr('class').includes('side-menu-left-show'))
			$('.side-menu-open-button')[0].click();
	});
});
</script>




<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		Modal content
		<div class="modal-content"
			style="height: 590px; width:595px; border-radius: 11px;">
			
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div class="ifm1">
					<iframe width="560" height="550" class="embed-responsi+ve-item"
						name="iframe_a" id="iframe_a" frameborder="0" allowfullscreen
						scrolling="auto"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
  
  
  
  
  
<script>
	function myFunctionLogout() {

		var r = confirm("Are You Sure You Want To LogOut?");
		if (r == true) {
			return true;
		} else {
			return false;
		}
	}
</script>

<script>
	$(document).ready(function() {
		$("#myBtnredPF").click(function() {
			$("#myModal").modal();
		});
		$("#myBtnredAR").click(function() {
			$("#myModal").modal();
		});
		$("#myBtnredBAL").click(function() {
			$("#myModal").modal();
		});
		$("#myBtnredRED").click(function() {
			$("#myModal").modal();
		});
		$("#myBtnredHTE").click(function() {
			$("#myModal").modal();
		});
		$("#viewAllArticleBtn").click(function() {
			$("#myModal").modal();
		});
	});
	
	
	function myFunction(name) {
		var giftBoucher = confirm(name);
		if (giftBoucher == true) {
			window.location.assign("${pageContext.request.contextPath}/redeem/" + name);
		}
	}
</script>

  
</body>
</html>