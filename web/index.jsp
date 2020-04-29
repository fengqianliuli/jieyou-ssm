<%--
  Created by IntelliJ IDEA.
  User: zhiyu
  Date: 2020/4/29
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  $END$
<%--若form表单中的action属性值以"/"开头则表示绝对路径--%>
  <form action="users/insertTest" method="post">
    <input name="userName" type="text">
    <input name="userPassword" type="password">
    <input name="userGender" type="text" value="男">
    <input name="userPhone" type="number">
    <input name="userMoney" type="hidden" value="0">
    <input name="userCredit" type="hidden" value="70">
    <input type="submit">
  </form>


  <form action="users/updateTest" method="post">
    <input name="userName" type="text">
    <input name="userPassword" type="password">
    <input name="userGender" type="text" value="男">
    <input name="userPhone" type="number">
    <input name="userMoney" type="hidden" value="0">
    <input name="userCredit" type="hidden" value="70">
    <input type="submit">
  </form>

  </body>
</html>
