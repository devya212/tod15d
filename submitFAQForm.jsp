<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
    	h2{
    		text-align: center;
    		margin-bottom:50px;
    	}
    </style>

</head>
<body>
	<h2>Create a FAQ(Frequently asked question)</h2>
	<springForm:form class="form-horizontal" action="saveFAQ" method="post">
		<fieldset>

		
		<!-- Text input-->
		<div class="form-group">
		  <label class="col-sm-4 control-label" for="question">Question</label>  
		  <div class="col-sm-7">
		  <input id="question" name="question" type="text" placeholder="Enter the question here.." class="form-control input-md" required="">
		    
		  </div>
		</div>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-sm-4 control-label" for="answer">Answer</label>  
		  <div class="col-sm-7">
		  <input id="answer" name="answer" type="text" placeholder="Enter the answer here.." class="form-control input-md" required="">
		    
		  </div>
		</div>

		</fieldset>

		<!-- Button -->
		<div class="form-group">
		  <label class="col-sm-5 control-label" for="submitFAQ"></label>
		  <div class="col-sm-5">
		    <button id="submitFAQ" name="submitFAQ" class="btn btn-primary" type="submit">Submit</button>
		  </div>
		</div>
	</springForm:form>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	
</body>
</html>