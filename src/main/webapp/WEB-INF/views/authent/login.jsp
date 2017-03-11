<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Login page</title>
        <link href="<spring:url value='/resources/css/bootstrap.min.css'  />" rel="stylesheet" />
        <link href="<spring:url value='/resources/css/style.css'  />" rel="stylesheet" />
    </head>
 
    <body>
        <div id="mainWrapper">
            <div class="login-container">
                <div class="login-card">
                    <div class="login-form">
                        <form action="<c:url value='/login'/>" method="post" class="form-horizontal">
                            <c:if test="${param.error != null}">
                                <div class="alert alert-danger">
                                    <p>Invalid username and password.</p>
                                    <br />
                                    <p>Reason: ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}<p>
                                </div>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success">
                                    <p>You have been logged out successfully.</p>
                                </div>
                            </c:if>
                            <div class="input-group input-sm">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" id="username" name="login" placeholder="Enter Username" required>
                            </div>
                            <div class="input-group input-sm">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
                                 
                            <div class="form-actions">
                                <input type="submit"
                                    class="btn btn-block btn-primary btn-default" value="Log in">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
 
    </body>
</html>