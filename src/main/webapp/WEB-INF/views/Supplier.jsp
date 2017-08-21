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
                    <li role="presentation"><a href="Category">Category </a></li>
                    <li role="presentation"><a href="Supplier">Supplier </a></li>
                    <li role="presentation"><a href="Product">Product </a></li>
                </ul>
            </div>
        </div>
    </nav>
      <form:form method="POST" action="supplier.do" modelAttribute="supplier">
    <div class="container">
        <div class="well"><span> </span>
            <div class="row">
                <div class="col-md-4">
                    <form:label path="supplierid">Supplier id</form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="supplierid" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <form:label path="supplierName">Supplier Name</form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="supplierName" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <button class="btn btn-primary" name="action" type="submit">Add </button>
                    <button class="btn btn-primary" name="action" type="button">Edit </button>
                    <button class="btn btn-primary" name="action" type="submit">Delete </button>
                    <button class="btn btn-primary" name="action" type="submit">Search </button>
                </div>
            </div>
        </div>
    </div>
     </form:form>
       <br>
            
            <div class="container">
        <div class="well">  
<table class="table table-hover">
<thead>
<tr>
	<th>ID</th>
	<th>Supplier Name</th>
</tr>
</thead>
<tbody>	
	<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.supplierid}</td>
			<td>${supplier.supplierName}</td>
			
			
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