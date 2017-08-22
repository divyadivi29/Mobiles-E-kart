<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>category</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/category.css"/>">
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li role="presentation"><a href="category">Category </a></li>
                    <li role="presentation"><a href="supplier">Supplier </a></li>
                    <li role="presentation"><a href="product">Product </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <form:form method="POST" action="category.do" modelAttribute="category">
    <div class="well">
        <div class="row">
            <div class="col-md-4">
                <form:label path="categoryId">category Id</form:label>
            </div>
            <div class="col-md-6 col-sm-8">
                <form:input path="categoryId" type="text"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <form:label path="categoryName">category Name</form:label>
            </div>
            <div class="col-md-6 col-sm-8">
                <form:input path="categoryName" type="text"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <form:label path="categorydescription">category Description</form:label>
            </div>
            <div class="col-md-6 col-sm-8">
                <form:input path="categorydescription" type="text"/>
            </div>
            <div class="col-md-12 buttons">
                <button class="btn btn-primary" name="action" type="submit">Add </button>
                <button class="btn btn-primary" name="action" type="submit">Edit </button>
                <button class="btn btn-primary" name="action" type="submit">Delete </button>
                <button class="btn btn-primary" name="action" type="submit">Search </button>
            </div>
        </div>
         
        <div class="row"></div>
    </div>
      </form:form>
     <br>
   <div class="container">
        <div class="well">  
<table class="table table-hover" >
<thead>
<tr>
	<th>ID</th>
	<th>Category name</th>
	<th>Category description</th>
	
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${categoryList}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categorydescription}</td>
			
		</tr>
	</c:forEach>
</tbody>
</table>
</div>
    </div>
     
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    
</body>

</html>