<%--
  Created by IntelliJ IDEA.
  User: wjdrm
  Date: 2022-01-19
  Time: 오후 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>html연습시간</title>
</head>
<body>
<form method="post" action="/complete">
    <table border="30">
        <tr>
            <th>USERID</th>
            <th><input type="text" name="USERID"/></th>
        </tr>
        <tr>
            <th>PASSWORD</th>
            <th><input type="text" name="PASSWORD"/></th>
        </tr>
        <tr>
            <th>NAME</th>
            <th><input type="text" name="NAME"/></th>
        </tr>
        <tr>
            <th>AGE</th>
            <th><input type="text" name="AGE"/></th>
        </tr>
        <tr>
            <th>GENDER</th>
            <th><input type="text" name="GENDER"/></th>
        </tr>
        <tr>
            <th>ADDRESS</th>
            <th><input type="text" name="ADDRESS"/></th>
        </tr>
        <tr>
            <th>PHONE</th>
            <th><input type="text" name="PHONE"/></th>
        </tr>
        <tr>
            <th>EMAIL</th>
            <th><input type="text" name="EMAIL"/></th>
        </tr>
        <tr>
            <th>COUNTRY</th>
            <th><input type="text" name="COUNTRY"/></th>
        </tr>
        <tr>
            <th>BIRTH</th>
            <th><input type="text" name="BIRTH"/></th>
        </tr>
    </table>
    <button type="submit" >가입합니다.</button>
</form>



</body>
</html>
