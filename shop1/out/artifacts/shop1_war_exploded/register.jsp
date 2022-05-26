<%--
  Created by IntelliJ IDEA.
  User: 150099
  Date: 2021/12/30
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <style type="text/css">
        form{
            margin-top: 10%;
            margin-left: 40%;
        }
        input{
            width: 300px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn1{
            width: 200px;
            text-align: center;
            display: flex;
        }
        .btn1 input{
            margin-top: 20px;

        }
    </style>
</head>
<body>
<div style="font-size: 50px;">
    用户注册
</div>
    <form action="${pageContext.request.contextPath }/RegisterServlet" method="post">
        <label>昵称:</label>
        <div>
            <input type="text" name="name" id="id" value="" />
        </div>

        <label>性别:</label>
        <div class="btn1">
            <p>男</p><input type="radio" name="sex" id="id" value="1" />
            <p>女</p><input type="radio" name="sex" id="id" value="0" />
        </div>

        <label>年龄:</label>
        <div>
            <input type="text" name="age" id="id" value="" />
        </div>

        <label>密码:</label>
        <div>
            <input type="text" name="password" id="id" value="" />
        </div>

        <input type="submit" value="注册"/>
    </form>
</body>
</html>
