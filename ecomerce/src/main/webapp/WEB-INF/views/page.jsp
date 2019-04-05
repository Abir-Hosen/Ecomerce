<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta http-equiv="refresh" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="An ecomerce based project">
		<meta name="author" content="Abir Hosen">
	
		<title>Ecomerce ${title}</title>
	
		<link rel="stylesheet" type="text/css"
			href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
		<!-- Custom styles for this template -->
		<link href="${css}/myapp.css" rel="stylesheet">
		<!-- Loading jquery -->
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
	
	</head>

	<body>
<!-- 		${title} -->
		
		<%@ include file="./shared/navbar.jsp" %>
		
		<!-- Loading Home Content -->
		<c:if test="${userClickHome == true}">
			<%@include file="./pages/home.jsp"%>
		</c:if>
		
		<!-- Loading Product Content -->
		<c:if test="${userClickViewProduct == true}">
			<%@include file="./pages/products.jsp"%>
		</c:if>
		
		<!-- Loading Upload Product Content -->
		<c:if test="${userClickUploadProducts == true}">
			<%@include file="./pages/uploadProducts.jsp"%>
		</c:if>
		
		<!-- Loading About Content -->
		<c:if test="${userClickAbout == true}">
			<%@include file="./pages/about.jsp"%>
		</c:if>
		
		<!-- Loading Contact Content -->
		<c:if test="${userClickContact == true}">
			<%@include file="./pages/contact.jsp"%>
		</c:if>
		
		<!-- Loading Friend Content -->
		<c:if test="${userClickFriend == true}">
			<%@include file="./pages/friend.jsp"%>
		</c:if>
		
		
		<%@ include file="./shared/footer.jsp" %>
		
		<script src="${js}/three.r92.min.js"></script>
		<script src="${js}/vanta.birds.min.js"></script>
		<script type="text/javascript" src="${js}/myapp.js"></script>
	</body>

</html>