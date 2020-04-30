<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有记录</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <base href="${pageContext.request.contextPath}/">
    <script src="resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
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
                            <a href="users/${s.SId}/${user.userName}/selectSecretDetail" target="iframe_a">详情</a>
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
    </div>
</body>
</html>
