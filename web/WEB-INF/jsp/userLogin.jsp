<%--
  Created by IntelliJ IDEA.
  User: zhiyu
  Date: 2020/4/30
  Time: 07:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>登录</small>
                </h1>
            </div>
        </div>
    </div>

    <form>
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="username">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control" name="password">
        </div>
        <div class="form-group">
            <br/>
            <input type="submit" class="form-control" value="登录">
        </div>
    </form>
</div>
</body>
</html>
