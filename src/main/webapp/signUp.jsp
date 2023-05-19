<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 5/17/2023
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form đăng kí</title>
    <link rel="stylesheet" href="signUp.css">
</head>
<body>
<%
    String errorPassword = (request.getAttribute("passwordError") == null) ? "" : request.getAttribute("passwordError").toString();
    String errorEmail = (request.getAttribute("emailError") == null) ? "" : request.getAttribute("emailError").toString();
%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card">
                <h2 class="card-title text-center">Form Đăng Kí </h2>
                <div class="card-body py-md-4">
                    <form _lpchecked="1" method="post">
                        <div class="form-group">
                            <input type="email" required class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                        <div class="error_email" style="color: red;margin-bottom: 10px"><%= errorEmail %></div>
                        <div class="form-group">
                            <input type="password" required class="form-control" id="password" name="password" placeholder="Password">
                        </div>
                        <div class="error_password" style="color: red;margin-bottom: 10px" ><%= errorPassword %></div>
                        <div class="form-group">
                            <input type="password" required class="form-control" id="confirm-password" name="re-password" placeholder="confirm-password">
                        </div>
                        <div class="d-flex flex-row align-items-center justify-content-between">
                            <button class="btn btn-primary">Create Account</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
