<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
    <form:form method="POST" action="product.do" encode="multipart/form-data" modelAttribute="product">
    <div class="container">
        <div class="well"><span> </span>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="productid">Product id</form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="productid" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="productName">Product Name </form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="productName" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="productDescription">Product Description</form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="productDescription" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="price">Price </form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="price" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="stock">Stock </form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="stock" type="text"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="image">Image </form:label>
                </div>
                <div class="col-md-6">
                    <form:input path="image" type="file"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="Catid">Category </form:label>
                </div>
                <div class="col-md-6">
                    <form:select path="Catid" class="form-control">
                        <optgroup label="This is a group">
                            
                            <c:forEach items="${categoryList}" var="category">
								
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
                        </optgroup>
                    </form:select>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <form:label path="Supid">Supplier </form:label>
                </div>
                <div class="col-md-6">
                    <form:select path="Supid">
                        <optgroup label="This is a group">
                            <c:forEach items="${supplierList}" var="supplier">
								
									<option class="form-control" value="${supplier.supplierid}">${supplier.supplierName}</option>
								</c:forEach>
                            </optgroup>
                       
                    </form:select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <button class="btn btn-primary" name="action" type="submit">ADD </button>
                    <button class="btn btn-primary" name="action" type="submit">Edit </button>
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
		<table class ="table table-hover ">
		<thead>
		<tr>
	<th>ID</th>
	<th>Product name</th>
	<th>Product desc</th>
	<th>product price</th>
	<th>product stock</th>
	<th>image</th>
</tr>
</thead>	
<tbody>	
<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.productid}</td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td><div class="thumbnail">
			<img height="200px" width="200px" atl="${product.productid}"
			src="<c:url value="/resources/images/${product.productid}.jpg"></c:url>">
			</div></td>
			
			
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