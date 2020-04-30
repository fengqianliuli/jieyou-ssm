<%-- 
    Document   : UpdateUser
    Created on : 2020-3-20, 20:38:16
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改个人信息</title>
        <base href="${pageContext.request.contextPath}/">
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        修改个人信息
                    </h1>
                </div>
            </div>
        </div>

        <a href="#">返回主页</a>

            <form action="users/updateUser" method="post">

                <div class="form-group">
                <label for="username">用户名</label>
                <input id="username" type="text" name="userName" value="${user.userName}" readonly="true" class="form-control"/>
                </div>
                <br><br>

                <div class="form-group">
                <label for="userpassword">密码</label>
                <input id="userpassword" type="password" name="userPassword" value="${user.userPassword}" class="form-control"/>
                </div>
                <br><br>

                <div class="form-group">
                <label for="usergender">性别</label>
                <select id="usergender" name="userGender" class="form-control">
                    <option selected>${user.userGender}</option>
                    <option>保密</option>
                    <option>男</option>
                    <option>女</option>
                </select>
                </div>
                <br><br>

                <div class="form-group">
                <label for="userphone">手机号</label>
                <input id="userphone" type="number" name="userPhone" value="${user.userPhone}" class="form-control"/>
                </div>
                <br><br>

                <input id="usermoney" type="hidden" name="userMoney" value="${user.userMoney}"/>
                <br><br>

                <input id="usercredit" type="hidden" name="userCredit" value="${user.userCredit}"/>
                <br><br>

                <div class="form-group">
                <input type="submit" value="确认更改" class="form-control"/>
                </div>
            </form>
    </div>
    </body>
</html>
