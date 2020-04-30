<%-- 
    Document   : userBackpage
    Created on : 2020-2-10, 13:46:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>我的</title>
        <base href="${pageContext.request.contextPath}/">
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <span>${msg}</span>
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


        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>记录秘密</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="users/addSecret" method="post">
            <div class="form-group">
            <label for="stitle">秘密标题</label>
            <input id="stitle" type="text" name="sTitle" class="form-control"/>
            </div>

            <div class="form-group">
            <label for="scontext">秘密内容</label>
            <input id="scontext" type="text" name="sContext" class="form-control"/>
            </div>

            <div class="form-group">
            <label for="stype">是否隐藏</label>
            <select id="stype" name="sType" class="form-control">
                <option selected>公开</option>
                <option>仅自己可见</option>
            </select>
            </div>

            <div class="form-group">
            <input type="hidden" name="userName" value="${user.userName}" class="form-control"/>
            </div>

            <br/>
            <div class="form-group">
            <input type="submit" value="记录" class="form-control" onclick="alert('记录成功！')"/>
            </div>
        </form>


        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>发布问题</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="users/addProblem" method="post">
            <div class="form-group">
            <label for="ptitle">问题标题</label>
            <input id="ptitle" type="text" name="pTitle" class="form-control"/>
            </div>

            <div class="form-group">
            <label for="pcontext">问题详细描述</label>
            <input id="pcontext" type="text" name="pContext" class="form-control"/>
            </div>

            <div class="form-group">
            <input id="username" type="hidden" name="userName" value="${user.userName}"/>
            </div>

            <br/>
            <div class="form-group">
            <input type="submit" value="确定提问" class="form-control" onclick="alert('问题成功发布！')"/>
            </div>
        </form>

    </div>
    </body>
</html>
