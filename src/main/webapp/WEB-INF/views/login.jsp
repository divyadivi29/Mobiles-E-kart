<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
      <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/login.css"/>">
</head>

<body>
<c:url var="actionUrl" value="j_spring_security_check" />
 <form:form class="form-signin" action="j_spring_security_check" method="post"><span class="reauth-email"> </span>

    <h1 class="text-center">Login Form</h1>
    <div class="well">
        <h3>Login </h3>
     
            <div class="row">
                <div class="col-md-6">
                 <label>Username</label>
                    <div class="input-group">
                        <div class="input-group-addon"><span> <i class="glyphicon glyphicon-user"></i></span></div>
                        <input name ="j_username" class="form-control input-lg" type="text" placeholder="Username" />
                        
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                <label>Password</slabel>
                    <div class="input-group">
                        <div class="input-group-addon"><span> <i class="glyphicon glyphicon-lock"></i></span></div>
                        <input  name="j_password" class="form-control input-lg" type="text" placeholder="Password" />
                                          </div>
                </div>
            </div>
        
        <div class="row">
            <div class="col-md-offset-4 col-sm-3 col-xs-12">
                <button class="btn btn-primary btn-block" type="submit">submit</button>
            </div>
        </div>
    </div>
    </form:form>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>

${error}