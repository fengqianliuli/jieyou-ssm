<%-- 
    Document   : SecretUsername
    Created on : 2020-3-20, 20:25:57
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>secretUsername</title>
        <base href="${pageContext.request.contextPath}/">
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        公开秘密记录
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>秘密ID</th>
                        <th>标题</th>
                        <th>内容</th>
                        <th>记录时间</th>
                        <th>状态</th>
                        <th>记录人</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${secretList}" var="s">
                        <tr id="tr${s.SId}">

                            <td>${s.SId}</td>
                            <td>${s.STitle}</td>
                            <td>${s.SContext}</td>
                            <td>${s.STime}</td>
                            <td>${s.SType}</td>
                            <td>${s.userName}</td>
                            <td>
                                <a href="users/${s.SId}/${user.userName}/selectSecretDetail" target="iframe_a">详情</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


    </div>
    </body>
</html>
