<%-- 
    Document   : userRegister
    Created on : 2020-2-8, 23:05:21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户注册</title>
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <base href="${pageContext.request.contextPath}/">
    </head>
    <body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        用户注册
                    </h1>
                </div>
            </div>
        </div>

        <a href="#">返回主页</a>

        <form action="users/userRegister" method="post">
            <div class="form-group">
                <label for="username">用户名</label>
                <input id="username" type="text" name="userName" class="form-control"/>
            </div>
            <br><br>

            <div class="form-group">
                <label for="userPassword">密码</label>
                <input id="userPassword" type="password" name="userPassword" class="form-control"/>
            </div>
            <br><br>

            <div class="form-group">
                <label for="userGender">性别</label>
                <select id="userGender" name="userGender" class="form-control">
                    <option selected>保密</option>
                    <option>男</option>
                    <option>女</option>
                </select>
            </div>
            <br><br>

            <div class="form-group">
                <label for="userphone">手机号</label>
                <input id="userphone" type="number" name="userPhone" class="form-control"/>
            </div>
            <br><br>

            <input id="usermoney" type="hidden" name="userMoney" value="0"/>

            <input id="usercredit" type="hidden" name="userCredit" value="70"/>

            <div class="form-group">
                <input type="submit" value="提交注册" class="form-control"/>
            </div>
        </form>
    </div>
    </body>
</html>
