<%-- 
    Document   : success
    Created on : 2020-2-8, 23:04:50
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>秘密空间</title>
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
                        ${user.userName}的所有记录
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>秘密记录</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>秘密ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>记录时间</th>
                    <th>状态</th>
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
                        <td>
                            <a href="users/${s.SId}/${user.userName}/selectSecretDetail">详情</a>
                            <a href="javascript:deleteSecret('${s.SId}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <script>
                function deleteSecret(sId) {
                    $.ajax({
                        url: 'users/deleteSecret',
                        type: 'POST',
                        data: {sid: sId},
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + sId).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </div>
<%--=========================================--%>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>问题记录</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>问题ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${problemList}" var="p">
                    <tr id="tr${p.PId}">

                        <td>${p.PId}</td>
                        <td>${p.PTitle}</td>
                        <td>${p.PContext}</td>
                        <td>
                            <a href="users/${p.PId}/${user.userName}/selectProblemDetail">详情</a>
                            <a href="javascript:deleteProblem('${p.PId}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <script>
                function deleteProblem(pid) {
                    $.ajax({
                        url: 'users/deleteProblem',
                        type: 'POST',
                        data: {pid: pid},
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + pid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </div>

<%--        =========================--%>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>回答记录</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>回答ID</th>
                    <th>所属回答ID</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${answerList}" var="a">
                    <tr id="tr${a.AId}">

                        <td>${a.AId}</td>
                        <td>${a.PId}</td>
                        <td>${a.AContext}</td>
                        <td>
                            <a href="javascript:deleteAnswer('${a.AId}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <script>
                function deleteAnswer(aid) {
                    $.ajax({
                        url: 'users/deleteAnswer',
                        type: 'POST',
                        data: {aid: aid},
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + aid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </div>

<%--        ============================--%>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>评论记录</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>评论ID</th>
                    <th>所属秘密ID</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${remarkList}" var="r">
                    <tr id="tr${r.RId}">

                        <td>${r.RId}</td>
                        <td>${r.SId}</td>
                        <td>${r.RContext}</td>
                        <td>
                            <a href="javascript:deleteRemark('${r.RId}');">详情</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <script>
                function deleteRemark(rid) {
                    $.ajax({
                        url: 'users/deleteRemark',
                        type: 'POST',
                        data: {rid: rid},
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + rid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </div>

    </div>
    </body>
</html>
