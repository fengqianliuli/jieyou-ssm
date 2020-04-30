
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SecretDetail</title>
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
                        ${Secret.STitle}
                    </h1>
                </div>
            </div>
        </div>


        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <tr>
                        <th>秘密ID</th>
                        <th>${Secret.SId}</th>
                    </tr>
                    <tr>
                        <th>秘密标题</th>
                        <th>${Secret.STitle}</th>
                    </tr>
                    <tr>
                        <th>秘密内容</th>
                        <th>${Secret.SContext}</th>
                    </tr>
                    <tr>
                        <th>记录时间</th>
                        <th>${Secret.STime}</th>
                    </tr>
                    <tr>
                        <th>记录人</th>
                        <th>${Secret.userName}</th>
                    </tr>
                </table>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>评论列表</small>
                    </h1>
                </div>
            </div>
        </div>


        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>评论ID</th>
                        <th>评论内容</th>
                        <th>评论人</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${RemarkList}" var="r">
                        <tr id="tr${r.RId}">

                            <td>${r.RId}</td>
                            <td>${r.RContext}</td>
                            <td>${r.userName}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>发表评论</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="users/addRemark" method="post">

            <div class="form-group">
            <label for="rcontext">评论内容</label>
            <input id="rcontext" type="text" name="rContext" class="form-control"/>
            </div>
            <br>

            <div class="form-group">
            <label for="username">评论人</label>
            <select id="username" name="userName" class="form-control">
                <option selected>${user.userName}</option>
                <option>匿名</option>
            </select>
            </div>
            <br>

            <input id="sid" type="hidden" name="sId" value="${Secret.SId}"/>

            <div class="form-group">
            <input type="submit" value="提交评论" class="form-control" onclick="alert('评论已提交！')"/>
            </div>
        </form>

    </div>
    </body>
</html>
