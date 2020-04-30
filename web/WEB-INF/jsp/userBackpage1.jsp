<%--
  Created by IntelliJ IDEA.
  User: zhiyu
  Date: 2020/4/30
  Time: 07:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <base href="${pageContext.request.contextPath}/">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>
                        <span>${user.userName}</span>
                    </small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 column">
            <a href="users/selectUser/${user.userName}" class="btn btn-primary">修改个人信息</a>
            <a href="users/deleteUser/${user.userName}" class="btn btn-primary">注销此账号</a>
            <a href="users/selectOneselfAll/${user.userName}" class="btn btn-primary">我的所有记录</a>
            <a href="users/selectAllSecretWithUsername/${user.userName}" class="btn btn-primary">秘密</a>
            <a href="users/selectAllProblemWithUsername/${user.userName}" class="btn btn-primary">问答</a>
        </div>
    </div>
</div>
</body>
</html>
