<%-- 
    Document   : OpenProblem
    Created on : 2020-3-20, 18:48:43
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        所有问题
                    </h1>
                </div>
            </div>
        </div>


        <div class="row clealfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>问题ID</th>
                        <th>问题标题</th>
                        <th>具体内容</th>
                        <th>提问者</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${problemList}" var="p">
                        <tr id="tr${p.PId}">

                            <td>${p.PId}</td>
                            <td>${p.PTitle}</td>
                            <td>${p.PContext}</td>
                            <td>${p.userName}</td>
                            <td>
                                <input type="button" name="Submit" value="详情" onclick="ale()" class="form-control"/>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <script language="javascript">
                    function ale()
                    {
                        if(confirm("登录后可查看详情，现在要跳转到登录页嘛？QAQ"))
                        {//如果是true ，那么就把页面转向
                            location.href="http://localhost:8080/jieyou_ssm/";
                        }
//                    else
//                    {//否则说明下了，赫赫
//                        alert("你取消了跳转");
//                    }
                    }
                </script>
            </div>
        </div>


    </div>

    </body>
</html>
