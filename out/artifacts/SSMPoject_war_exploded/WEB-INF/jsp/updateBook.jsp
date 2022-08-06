<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../layui-v2.6.8/layui-v2.6.8/layui/css/layui.css">
    <style>
        body
        {
            margin: 0;
            border: 0;
            padding: 0;
            overflow: hidden;
            background-color: #8EC5FC;
            background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
        }
    </style>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" style="margin-top: 0;">
                <h1 style="margin-bottom: 0">
                    <a style="font-size: 40px; color: orangered" href="${pageContext.request.contextPath}/index.jsp">【简印】</a>
                    <small><b style="font-size: 25px">书籍列表</b>----修改书籍</small>
                    <img src="/static/img/9.jpg" height="40px" width="40px" style="border-radius: 200px;position: absolute;left: 82%"/>
                    <a style="font-size: 17px;color:black;position: absolute;left: 86%;top: 35%">用户 : ${sessionScope.get("userLoginInfo")}</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout" style="position: relative; float: right;margin:0;font-size: 16px">注销</a>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--        修改书籍需要用到BookID  设置隐藏域   --%>
        <input type="hidden" name="bookID" value="${book.getBookID()}"/>
        <div class="from-group" style="margin-bottom: 10px">
            <label>书籍名称:</label>
            <input  class="form-control" type="text" name="bookName" value="${book.getBookName()}" required/>
        </div>
        <div class="form-group">
            <label>书籍数量:</label>
            <input class="form-control" type="text" name="bookCounts" value="${book.getBookCounts()}" required/>
        </div>
        <div class="form-group">
            <label>书籍详情:</label>
            <input class="form-control" type="text" name="detail" value="${book.getDetail() }" required/>
        </div>
        <div class="form-group">
            <input class="btn btn-primary" type="submit" value="修改"/>
            <a id="layerBtn2" class="btn btn-default">取消</a>
        </div>
    </form>

</div>
</body>

<script src="../../layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>

<script>
    layui.use(['layer', 'jquery', 'form'], function () {
        // 这个时候将挂载到layui中的layer放置到一个变量上面，有助于我们调用
        var layer = layui.layer
        var $ = layui.jquery
        var form = layui.form
        // 首先第一种调用方法就是(采用的是jquery的点击事件)
        $('#layerBtn2').on('click', function (e) {
            // 调用的layer弹窗
            layer.msg('取消修改！')
            setTimeout(function () {
                history.back();
            },800)
        })
    })
</script>

</html>

