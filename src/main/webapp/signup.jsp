<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://xmlns.jcp.org/jsp/jstl/core" %> --%>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .paint-card {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
        }
    </style>
</head>
<body>

    <%@ include file="component/navbar.jsp" %>

    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-4 text-center mb-4">User Signup</p>

                        <c:if test="${not empty sucMsg}">
                            <div class="alert alert-success text-center">${sucMsg}</div>
                            <c:remove var="sucMsg" />
                        </c:if>

                        <c:if test="${not empty errorMsg}">
                            <div class="alert alert-danger text-center">${errorMsg}</div>
                            <c:remove var="errorMsg" />
                        </c:if>

                        <form action="Register" method="post">
                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input type="text" name="fullName" required class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="email" required class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input type="password" name="password" required class="form-control">
                            </div>

                            <button type="submit" class="btn btn-success col-12">Register</button>
                        </form>

                        <div class="text-center mt-3">
                            Already have an account? <a href="login.jsp">Login</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
