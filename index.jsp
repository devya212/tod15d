<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="now" class="java.util.Date" scope="request"/>
<fmt:parseNumber value="${ now.time / (1000*60*60*24) }" integerOnly="true" var="nowDays"/>



<%@include file="menu.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/StaticFiles/BootStrap/css/bootstrap.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/StaticFiles/Font-Awesome/css/font-awesome.min.css'/>">
	<script type="text/javascript" src="<c:url value='/resources/StaticFiles/js/jquery-3.3.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/StaticFiles/BootStrap/js/bootstrap.min.js'/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/StaticFiles/css/discussion-forum-categories.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/StaticFiles/css/discussion-forum-index.css'/>">
	<script type="text/javascript" src="<c:url value="/resources/StaticFiles/js/jquery.validate.min.js" />"></script>
	
	<c:if test='${currentCategory==null || "".equalsIgnoreCase(currentCategory)}'>
		<title>Discussion Forum</title>
	</c:if>
	<c:if test='${currentCategory!=null && ! "".equalsIgnoreCase(currentCategory)}'>
		<title>${currentCategory.categoryName} | Discussion Forum</title>
	</c:if>
	
	<style type="text/css">
		<c:if test='${currentCategory!=null && ! "".equalsIgnoreCase(currentCategory)}'>
			.main-body-left-content > ul > li> .active
			{
				color: ${currentCategory.categoryBackgroundColor};
			}
		</c:if>
	</style>

</head>

<body>
	
	
	
	<div class="discussion-forum-body">
	
	
	
		<input type="hidden" name="currentCategoryID" id="currentCategoryID" value="category_${currentCategoryID}">
		<c:if test='${currentCategory==null || "".equalsIgnoreCase(currentCategory)}'>
			<input type="hidden" name="currentCategoryName" id="currentCategoryName" value="${currentCategory}">
		</c:if>
		<c:if test='${currentCategory!=null && ! "".equalsIgnoreCase(currentCategory)}'>
			<input type="hidden" name="currentCategoryName" id="currentCategoryName" value="${currentCategory.categoryName}">
		</c:if>
		<input type="hidden" name="currentThreadsListingType" id="currentThreadsListingType" value="${currentThreadsListingType}">
		<input type="hidden" name="currentPage" id="currentPage" value="${currentPage}">
		
		
		
		
		<c:if test='${currentCategory==null || "".equalsIgnoreCase(currentCategory)}'>
			<!-- Title Bar -->
			<div class="col-md-12 jumbotron title-card">
				<h3 class="title-card-heading">Nucleus Software Discussion Forum</h3>
				<p class="col-md-8 col-md-offset-2 title-card-desc">
					<!-- Get support using and extending Discussion Forum, the next-generation forum software that makes online discussion fun. -->
Exchange views, explore ideas and discover new information in the BFSI domain.<br>
Let us discuss!
					
				</p>
			</div>
		</c:if>
		
		<c:if test='${currentCategory!=null && ! "".equalsIgnoreCase(currentCategory)}'>
			<!-- Title Bar -->
			<div class="col-md-12 jumbotron title-card" style="background-color: ${currentCategory.categoryBackgroundColor};">
				<h3 class="title-card-heading">${currentCategory.categoryName}</h3>
				<div>
					<ul class="sub-categories-link">
						<c:forEach items="${categories}" var="category" >
							<li><a href="${pageContext.request.contextPath}/forum/${category.categoryName}">${category.categoryName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<p class="col-md-8 col-md-offset-2 title-card-desc">
					${currentCategory.categoryDescription}
				</p>
			</div>
		</c:if>
		
		
		
		
		<!-- Main Body -->
		<div class="col-md-12 main-body-content">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-md-12">
	
					<!-- Main Body left content -->
					<div class="col-md-2 main-body-left-content">
						
						<security:authorize ifAnyGranted="ROLE_ADMIN">
							<ul class="list left-menu" style="width: 100%;">
								<li>
									<button type="button" class="Button Button--primary" data-toggle="modal" data-target="#ThreadCreationModal">Create Thread</button>  
								</li>
							</ul>
						</security:authorize>
					
						<ul class="list left-menu">
							<li data-id="home" id="home">
								<a href="${pageContext.request.contextPath}/forum" class="active"><i class="icon fa fa-comments-o Button-icon"></i>All Discussions</a>
							</li>
							<li data-id="category" id="category">
								<a href="${pageContext.request.contextPath}/forum/discussionForumCategories"><i class="icon fa fa-th-large Button-icon"></i>Categories</a>
							</li>
						</ul>
						<ul class="list left-category-menu">
						
							<c:forEach items="${allCategories}" var="parentCategory" >
								<c:if test="${parentCategory.parentCategory == null}">
									<li data-id="category_${parentCategory.categoryId}" id="category_${parentCategory.categoryId}" class="parent">
										<a href="${pageContext.request.contextPath}/forum/${parentCategory.categoryName}">
											<span class="icon TagIcon Button-icon"  style="background-color: ${parentCategory.categoryBackgroundColor};"></span>${parentCategory.categoryName}
										</a>
									</li>
									
									<c:forEach items="${allCategories}" var="childCategory" >
										<c:if test="${childCategory.parentCategory.categoryName.equalsIgnoreCase(parentCategory.categoryName)}">
											<li data-id="category_${childCategory.categoryId}" id="category_${childCategory.categoryId}" class="child child_category_${parentCategory.categoryId}" style="display: none;">
												<a href="${pageContext.request.contextPath}/forum/${childCategory.categoryName}">
													<span class="icon TagIcon Button-icon"  style="background-color: ${childCategory.categoryBackgroundColor};"></span>${childCategory.categoryName}
												</a>
											</li>
										</c:if>
									</c:forEach>
									
								</c:if>
							</c:forEach>
						
							
							
							
						</ul>
					</div>
					
					<!-- Main Body right content -->
					<div class="col-md-10 main-body-right-content">
	
						<div class="col-md-12">
							<div class="col-md-6" style="float: left;">
								<div class="dropdown">
									<!-- Dropdown menu button -->
									<button class="Button dropdown-toggle" type="button" id="dropdownThreadlistingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span>Latest</span>
										<span class="glyphicon glyphicon-triangle-bottom dropdown-arrow" aria-hidden="true"></span>
									</button>
			
									<!-- dropdown menu -->
									<ul class="dropdown-menu dropdownThreadlistingMenu">
									    <li>
									    	<a>
									    		<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
									    		<span id="Latest">Latest</span> 
									    	</a>
									    </li>
									    <li>
									    	<a>
									    		<span class="glyphicon glyphicon-ok" aria-hidden="true" style="visibility: hidden;"></span> 
									    		<span id="Top">Top</span>
									    	</a>
									    </li>
									    <li>
									    	<a>
									    		<span class="glyphicon glyphicon-ok" aria-hidden="true" style="visibility: hidden;"></span> 
									    		<span id="Newest">Newest</span>
									    	</a>
									    </li>
										<li>
											<a>
												<span class="glyphicon glyphicon-ok" aria-hidden="true" style="visibility: hidden;"></span> 
												<span id="Oldest">Oldest</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="col-md-6" style="float: right;">
								<div class="input-group">
									<input type="text" id="searchBar" name="searchString" placeholder="Search" class="form-control">
									<span class="input-group-addon" style="cursor: pointer;" id="searchIcon"><span class="glyphicon glyphicon-search"></span></span>
								</div>
							</div>
						</div>
	
	
						<!-- Thread list -->
						<div class="col-md-12 discussion-list">
							<ul class="list discussion-list-discussions">
								
								<%-- <c:forEach items="${discussionThreads}" var="discussionThread" >
									<!-- Single Thread -->
									<li data-id="${discussionThread.discussionThread.discussionThreadId}">
										<div class="col-md-12 discussion-list-item">
											<a href="${pageContext.request.contextPath}/forum/${discussionThread.discussionThread.category.categoryName}/${discussionThread.discussionThread.discussionThreadId}-${discussionThread.discussionThread.title}" class="discussion-list-item-link">
												<div class="row discussion-list-item-title">
													<span class="discussion-list-item-titleContent">${discussionThread.discussionThread.title}</span>
													<span class="discussion-list-item-category-postCount">
														<span style="float:right;">
															<span class="discussion-list-item-category" style="background-color: ${discussionThread.discussionThread.category.categoryBackgroundColor};">${discussionThread.discussionThread.category.categoryName}</span>
															<span style="margin-right: 5px;">
																<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="margin-right: 5px;"></span>${discussionThread.discussionThread.usersWhoHaveViewedThisThread.size()}
															</span>
															<span class="DiscussionListItem-count">${discussionThread.totalNoOfApprovedPost}</span>
														</span>
													</span>
												</div>
												<div class="col-md-10 row discussion-list-item-info">
													<c:if test="${discussionThread.lastPost.postedByUser != null}">
														
														<fmt:parseNumber value="${ discussionThread.lastPost.postedDate.time / (1000*60*60*24) }" integerOnly="true" var="totalNoOfDays"/>
														<c:set value="${nowDays - totalNoOfDays}" var="dateDiff"/>
														
														<div style="margin-bottom: 5px;">
															<b>
																<i class="icon fa fa-reply "></i> ${discussionThread.lastPost.postedByUser.username}
															</b>
															Replied
															<c:choose>
															    <c:when test="${dateDiff eq 0}">today</c:when>
															    <c:when test="${dateDiff eq 1}">yesterday</c:when>
															    <c:otherwise>${dateDiff} days ago</c:otherwise>
														    </c:choose>
														</div>
													</c:if>
													<p class="show-read-more">
														${discussionThread.discussionThread.description}
													</p>
												</div>
											</a>
										</div>
									</li>
								</c:forEach> --%>
	
	
	
							</ul>
						</div>
	
	
						<!-- Load more button -->
						<!-- <div class="col-md-12 load-more-button">
							<button class="Button" id="loadMoreButton">Load More</button>
						</div> -->
						<div class="col-md-12 load-more-button">
						</div>
	
					</div>
				</div>
			</div>
		</div>
	
	</div>	
	
	<security:authorize ifAnyGranted="ROLE_ADMIN">
		<!-- Modal -->
		<div class="modal fade" id="ThreadCreationModal" role="dialog">
	      	<div class="modal-dialog">
	      	
	        	<!-- Modal content-->
	         	<div class="modal-content">
	         	         
	            	<s:form action="${pageContext.request.contextPath}/forum/Admin/createDiscussionThread" method="post" modelAttribute="discussionThreadModel" id="discussionThreadCreationForm">
	               		<div class="modal-header">
	                  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	                  		<h4 class="modal-title Heading" >Discussion Thread</h4>
	               		</div>
	               
	               
	               		<div class="modal-body">
				      
				            <div class="form-group">
				            	<label class="control-label" for="selectbasic">Select Category</label>
				            	<s:select path="category.categoryName" class="form-control" required="required">
				                   	
		                           	<c:forEach items="${allCategories}" var="parentCategory" >
										<c:if test="${parentCategory.parentCategory == null}">
											<optgroup label="${parentCategory.categoryName}">
											
												<c:forEach items="${allCategories}" var="childCategory" >
													<c:if test="${childCategory.parentCategory.categoryName.equalsIgnoreCase(parentCategory.categoryName)}">
														<s:option value="${childCategory.categoryName}">${childCategory.categoryName}</s:option>
													</c:if>
												</c:forEach>
											
											</optgroup>
										</c:if>
									</c:forEach>
		                           	
				            	</s:select>
				            	<s:errors path="category.categoryName" cssClass="error"/>
				            </div>         
				            
	                     	<div class="form-group">
	                        	<label for="title"><i class="fa fa-edit bigicon" style="margin-right: 10px"></i> Title</label>
	                     		<s:input type="text" path="title" class="form-control" placeholder="Title" required="required"/>
	                     		<s:errors path="title" cssClass="error"/>
	                     	</div>
	                     	
		                    <div class="form-group">
	                           	<label for="description"><i class="fa fa-comment bigicon" style="margin-right: 10px"></i>  Description</label>
		                        <s:textarea path="description" class="form-control" rows="5" placeholder="Description"></s:textarea>
		                    </div>
	                  
	               		</div>
	               
		               	<div class="modal-footer">
		                  	<button type="submit" class="btn btn-default">Submit</button>
		               	</div>
	               
	            	</s:form>
	         	</div>
	      	</div>
	   	</div>	
	   	
	   	<script type="text/javascript">
		   	$('#discussionThreadCreationForm').validate({
				rules: {
					title: {
						required: true
					}
				},
				
				messages: {
					title: {
						required: "Discussion Thread Title  is required."
					}
				}
			});
			
	   	</script>
	   	
	   	
	</security:authorize>
		
	
</body>


<script type="text/javascript">

	var processing;

	$(document).ready(function(){
		
		wrapThreadContent();

		$(".parent").click(function(){
			$(".child").hide();
			$(".child_"+$(this).data("id")).show();
		});


		$(".main-body-left-content > ul > li > a").click(function(){
			$(".main-body-left-content > ul > li > a").removeClass("active");
			$(this).addClass("active");
			$('#currentCategoryID').val("category_"+$(this).parent().data("id"));
		});


		$(".dropdownThreadlistingMenu > li > a").click(function(){
			$(".dropdownThreadlistingMenu > li > a").find("span:first").css("visibility", "hidden");
			$(this).find("span:first").css("visibility", "visible");
			$("#dropdownThreadlistingMenu > span:first").text($(this).find("span:last").text());
			$('#currentThreadsListingType').val($(this).find("span:last").text());
			
			refreshDiscussionThreadListFunction();
		});
		
		$('#searchIcon').click(function () {
			searchDiscussionThreadsFunction();
		});
		
		$("#searchBar").keypress(function(e) {
		    if(e.which == 13) {
		    	$("#searchIcon").click();
		    }
		});
		
		
		
		/* $('.load-more-button').click(function(){
			loadMoreDiscussionThreadFunction();
		}); */
		
		$(document).scroll(function(e){
	        if (processing)
	            return false;

	        if ($(window).scrollTop() >= ($(document).height() - $(window).height())*0.7){
	            processing = true;
	            loadMoreDiscussionThreadFunction();
	        }
	        
	    });

		
		initializePage();
		
		
		
		
		//vasu
		
		/* ========= */
		
		$("#parentCategoryDropDown").change(function(){
			if($(this).val() == "other")
			{
				$('#ParentCategoryCreationModal').modal('show');
				$(this).val("");
			}
		});
		
		/* ========= */
	});
	
	
	function wrapThreadContent()
	{
		var maxLength = 170;
		$(".show-read-more").each(function(){
			var myStr = $(this).text();
			if($.trim(myStr).length > maxLength){
				var newStr = myStr.substring(0, maxLength);
				newStr += ".....";
				$(this).empty().html(newStr);
			}
		});
	}
	
	
	function initializePage()
	{
		if($('#currentCategoryID').val() != "" && $('#currentCategoryID').val().localeCompare("category_") != 0)
		{
			if(!$("#"+$('#currentCategoryID').val()).is(":visible"))
			{
				var cssClasses = $("#"+$('#currentCategoryID').val()).attr("class").split(" ");
				$("."+cssClasses[1]).show();
			}
			$("#"+$('#currentCategoryID').val()).click();
			$("#"+$('#currentCategoryID').val()+" > a").click();
		}
		
		
		$('#'+$('#currentThreadsListingType').val()).parent().click();
		
		checkForBindingResultErrors( ${modalIdHavingError} );
	}
	
	function checkForBindingResultErrors(modalId)
	{
		$(modalId).modal('show');
	}

	
	function refreshDiscussionThreadListFunction()
	{
		var loadingIcon = '<img alt="Loading" style="width:150px;" src="<c:url value='/resources/StaticFiles/images/Loading_icon.gif'/>">';
		var buttonContent = $('.load-more-button').html();
		$('.load-more-button').html(loadingIcon);
		$('.discussion-list-discussions').html('');
		$("#currentPage").val(1);
		processing = false;
		
		$.post('<%= request.getContextPath() %>/forum/getDiscussionsThreads',
		{
			page : parseInt($("#currentPage").val()),
			threadsListingType : $("#currentThreadsListingType").val(),
			categoryName : $("#currentCategoryName").val(),
			CSRFToken : "${sessionScope.CSRFToken_tokenval}"
		},
		function(data, status) {
			$("#currentPage").val(parseInt($("#currentPage").val()));
			$('.load-more-button').html(buttonContent);
			/* if(status === 'success')
                $('.discussion-list-discussions').append(data); */
                
            var result = data.replace(/\s/g,'');
  			if(status === 'success')
  			{
                $('.discussion-list-discussions').append(data);
  				if(result === "")
  				{
  					$('.load-more-button').html('<h4 style="font-weight: bold;">End Of Results!!</h4>');
  					processing = true;
  				}
  				else
  				{
  					$('.load-more-button').html(buttonContent);
  				}
  			}
		});
	}
	
	
	function loadMoreDiscussionThreadFunction()
	{
		var loadingIcon = '<img alt="Loading" style="width:150px;" src="<c:url value='/resources/StaticFiles/images/Loading_icon.gif'/>">';
		var nextPageNo = parseInt($("#currentPage").val())+1;
		var buttonContent = $('.load-more-button').html();
		$('.load-more-button').html(loadingIcon);
		$.post('<%=request.getContextPath() %>/forum/getDiscussionsThreads',
		{
			page : nextPageNo,
			threadsListingType : $("#currentThreadsListingType").val(),
			categoryName : $("#currentCategoryName").val(),
			CSRFToken : "${sessionScope.CSRFToken_tokenval}"
		},
		function(data, status) {
			var result = data.replace(/\s/g,'');
			if(status === 'success')
			{
                $('.discussion-list-discussions').append(data);
				if(result === "")
				{
					$('.load-more-button').html('<h4 style="font-weight: bold;">End Of Results!!</h4>');
					processing = true;
				}
				else
				{
					$("#currentPage").val(nextPageNo);
					$('.load-more-button').html(buttonContent);
					processing = false;
				}
			}
			
		});
	}
	
	
	function searchDiscussionThreadsFunction()
	{
		console.log("md");
		var loadingIcon = '<img alt="Loading" style="width:150px;" src="<c:url value='/resources/StaticFiles/images/Loading_icon.gif'/>">';
		var buttonContent = $('.load-more-button').html();
		$('.load-more-button').html(loadingIcon);
		$('.discussion-list-discussions').html('');
		$("#currentPage").val(1);
		buttonContent = '';
		processing = true;
		
		var searchedString = $("#searchBar").val()
		
		$.post('<%= request.getContextPath() %>/forum/searchDiscussionsThreads',
		{
			searchString : $("#searchBar").val(),
			CSRFToken : "${sessionScope.CSRFToken_tokenval}"
		},
		function(data, status) {
			$("#currentPage").val(parseInt($("#currentPage").val()));
			$('.load-more-button').html(buttonContent);
                
            var result = data.replace(/\s/g,'');
  			if(status === 'success')
  			{
                $('.discussion-list-discussions').html('<span style="font-weight: bold;">You searched for: '+searchedString+'</span>');
                $('.discussion-list-discussions').append(data);
                $("#searchBar").val('');
  				if(result === "")
  				{
  					$('.load-more-button').html('<h4 style="font-weight: bold;">No Discussion Thread found!!</h4>');
  					processing = true;
  				}
  				else
  				{
  					$('.load-more-button').html(buttonContent);
  				}
  			}
		});
	}
	
	
</script>

<c:if test='${response != null}'>
	<%@include file="responseMessage.jsp" %>
</c:if>

</html>