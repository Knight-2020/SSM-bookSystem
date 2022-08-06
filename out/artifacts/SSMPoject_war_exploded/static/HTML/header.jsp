<%--
  Created by IntelliJ IDEA.
  User: 贾斌
  Date: 2022/3/3
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Head</title>
    <link rel="stylesheet" href="/CSS/header.css">
</head>
<body>
<div class="header">
    <a href="/index.jsp" class="logo">
        <h1>Logo</h1>
    </a>
    <nav class="navbar">
        <ul>
            <li><a href="#">首页</a></li>
            <li><a href="#">专业介绍</a></li>
            <li><a href="#">实验室</a>
                <ul class="hide">
                    <li><a href="#">932实验室</a></li>
                    <li><a href="#">925实验室</a></li>
                    <li><a href="#">923实验室</a></li>
                </ul>
            </li>
            <li><a href="#">教师队伍</a>
                <ul class="hide">
                    <li><a href="#">博士</a></li>
                    <li><a href="#">教授</a></li>
                    <li><a href="#">讲师</a></li>
                </ul>
            </li>
            <li><a href="#">就业指南</a></li>
            <li><a href="#">后台管理</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
