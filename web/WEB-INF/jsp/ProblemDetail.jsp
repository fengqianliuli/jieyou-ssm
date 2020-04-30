
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProblemDetail</title>
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
                        ${Problem.PTitle}
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <tr>
                        <th>问题ID</th>
                        <th>${Problem.PId}</th>
                    </tr>
                    <tr>
                        <th>问题标题</th>
                        <th>${Problem.PTitle}</th>
                    </tr>
                    <tr>
                        <th>问题内容</th>
                        <th>${Problem.PContext}</th>
                    </tr>
                    <tr>
                        <th>提问者</th>
                        <th>${Problem.userName}</th>
                    </tr>
                </table>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>回答列表</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>回答ID</th>
                        <th>具体内容</th>
                        <th>回答人</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${AnswerList}" var="a">
                        <tr id="tr${a.AId}">

                            <td>${a.AId}</td>
                            <td>${a.AContext}</td>
                            <td>${a.userName}</td>
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
                        <small>我要回答</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="users/addAnswer" method="post">

            <div class="form-group">
            <label for="acontext">具体回答</label>
            <input id="acontext" type="text" name="aContext" class="form-control"/>
            </div>
            <br><br>

            <div class="form-group">
            <label for="username">回答人</label>
            <select id="username" name="userName" class="form-control">
                <option selected>${user.userName}</option>
                <option>匿名</option>
            </select>
            </div>
            <br><br>

            <input id="pid" type="hidden" name="pId" value="${Problem.PId}" class="form-control"/>
            <br><br>

            <div class="form-group">
            <input type="submit" value="确认回答" class="form-control" onclick="alert('回答已添加！')"/>
            </div>
        </form>

    </div>

    </body>
</html>
