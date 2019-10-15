<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.align {
	margin: 25px;
	margin-left: 150px;
}

.reward {
	width: 500px;
	height: 25px;
	font-family: GillSans;
	font-size: 29px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	text-align: center;
	color: #333;
}

.zoom1 {
	transition: transform .2s;
	height: 0px;
	margin: =0px;
	margin-left: 160px;
	margin-right: 240px;
}

.zoom1:hover {
	-ms-transform: scale(1.1); /* IE 9 */
	-webkit-transform: scale(1.1); /* Safari 3-8 */
	transform: scale(1.05);
}
</style>

</head>

<body>
	<div
		style="margin-left: 75px; width: 400px; height: 29px; color: white; background-image: linear-gradient(326deg, #a4508b 0%, #5f0a87 74%);">
		<center>
			<h3>Submit Article</h3>
		</center>
	</div>
	<br>
	<p class="reward">&emsp;&emsp; Submit Your Article Here...</p>
	<br>
	<br>
	<div class="panel-group">
		<div class="panel panel-default" style="border-radius: 11px;">
			<div class="panel-heading"
				style="background-color: #3F51B5; color: #ffffff; border-top-left-radius: 10px; border-top-right-radius: 10px;">Choose
				File From Your PC</div>
			<div class="panel-body"
				style="height: 250px; background-color: #b3cdd1; background-image: linear-gradient(315deg, #b3cdd1 0%, #9fa4c4 74%);">
				<br>
				<br>
				<br>
				<springForm:form method="post" action="doUploadContributeArticle"
					enctype="multipart/form-data">
					<center>
						<input type="file" id="myFile" name="fileUpload" required="true" />
					</center>
					<br>
					<br>
					<div class="zoom1">
						<button type="submit" class="btn btn-success btn-sm btn-block">Submit</button>
					</div>
				</springForm:form>
			</div>
		</div>
	</div>
	<span style="color:blue;font-size:15px;font-family:Lucida Calligraphy;align:justified;">We can't wait to post the contribution.Our SMEs will get in touch with you in case of further queries....</span>
</body>
</html>
