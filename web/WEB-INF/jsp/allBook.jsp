<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body
        {
            margin: 0;
            border: 0;
            padding: 0;
            background-color: #8EC5FC;
            background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
        }
    </style>
    <script src="../../layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>
    <link rel="stylesheet" href="../../layui-v2.6.8/layui-v2.6.8/layui/css/layui.css">

</head>
<body>
<%--边框线--%>
<div class="container" >
    <%-- 清除浮动--%>
    <div class="row clearfix">
        <%--    把一个列中等(md)屏幕(12份)分成12份     --%>
        <div class="col-md-12 column" <%--style="background: #3F3D56"--%>>
            <%-- 头部 标签--%>
            <div class="page-header" style="margin-top: 0;">
                <h1 style="margin-bottom: 0">
                    <a style="font-size: 40px; color: orangered" href="${pageContext.request.contextPath}/index.jsp">【简印】</a>
                    <small><b style="font-size: 25px">书籍列表</b>----书籍展示</small>
                    <img src="/static/img/9.jpg" height="40px" width="40px" style="border-radius: 200px;position: absolute;left: 82%"/>
                    <a style="font-size: 17px;color:black;position: absolute;left: 86%;top: 35%" href="/user/queryMyself?userName=${sessionScope.get("userLoginInfo")}">${sessionScope.get("userLoginInfoType")} : ${sessionScope.get("userLoginInfo")}</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout" style="position: relative; float: right;margin:0;font-size: 13px">注销</a>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <%--  查询书籍  --%>
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color: red; font-weight: bold">${error}</span>
                    <input type="text" name="queryBookName" placeholder="请输入要查询的书籍名称" required>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>

            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <%--     table-hover:隔行变色     --%>
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名字</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.getBookID()}</td>
                            <td>${book.getBookName()}</td>
                            <td>${book.getBookCounts()}</td>
                            <td>${book.getDetail()}</td>
                            <td>
                                <button type="button" class="layui-btn layui-btn-normal layui-btn-sm" onclick="window.location.href='${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}'"><i class="layui-icon"></i></button>
                                &nbsp;&nbsp;|
                                <a type="button" class="layui-btn layui-btn-normal layui-btn-sm" onclick="x(${book.bookID})"><i class="layui-icon"></i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
            <div style="position: relative;left: 25%">
                <span>共${sum}条记录</span>
                &nbsp;
                <span>第${pageNow}页/共${sumpage}页</span>&nbsp;
                <a class='btn btn-info .btn-lg' href="/book/allBook?cp=1">首页</a>&nbsp;
                <a class='btn btn-success' href="/book/allBook?cp=${pageNow-1}">上一页</a>&nbsp;
                <a class='btn btn-warning' href="/book/allBook?cp=${requestScope.pageNow+1}">下一页</a>&nbsp;
                <a class='btn btn-default' href="/book/allBook?cp=${requestScope.sumpage}">尾页</a>
            </div>
    </div>
</div>
<script src="../../layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>
        <script>
/*            layui.use(['layer', 'jquery', 'form'], function () {
                // 这个时候将挂载到layui中的layer放置到一个变量上面，有助于我们调用
                var layer = layui.layer
                var $ = layui.jquery
                var form = layui.form
                // 首先第一种调用方法就是(采用的是jquery的点击事件)
                var a=$('#layerBtn').parents("tr").index();
                $('#layerBtn').on('click', function (e) {
                    x();
                })
            })*/

            function x(id) {
                layer.confirm('确认删除？', {
                    btn: ['是','否'] //按钮
                }, function(){
                    window.location.href='${pageContext.request.contextPath}/book/del/'+id;
                    layer.msg("删除成功");
                }, function(){
                    layer.msg('取消删除！');
                });
            }

        </script>
</body>



<%--粒子线条
<script type='text/javascript' color=#FB40C6>

/*    /!*点击鼠标特效*!/
    (function() {

        window.onclick = function(event) {

            var heart = document.createElement("b");

            heart.onselectstart = new Function('event.returnValue=false');

            document.body.appendChild(heart).innerHTML = "❤";

            heart.style.cssText = "position: fixed;left:-100%;";

            var f = 16, // 字体大小
                x = event.clientX - f / 2, // 横坐标
                y = event.clientY - f, // 纵坐标
                c = randomColor(), // 随机颜色
                a = 1, // 透明度
                s = 1.2; // 放大缩小

            var timer = setInterval(function() {

                if (a <= 0) {

                    document.body.removeChild(heart);

                    clearInterval(timer);

                } else {

                    heart.style.cssText = "font-size:16px;cursor: default;position: fixed;color:" + c + ";left:" + x + "px;top:" + y + "px;opacity:" + a + ";transform:scale(" + s + ");";

                    y--;
                    a -= 0.016;
                    s += 0.002;

                }

            }, 12)

        }

        // 随机颜色
        function randomColor() {

            return "rgb(" + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + ")";

        }

    }())

    !function () {
        function n (n, e, t) {
            return n.getAttribute(e) || t
        }

        function e (n) {
            return document.getElementsByTagName(n)
        }

        function t () {
            var t = e("script"), o = t.length, i = t[o - 1];
            return {l: o, z: n(i, "zIndex", -1), o: n(i, "opacity", .5), c: n(i, "color", "0,0,0"), n: n(i, "count", 99)}
        }

        function o () {
            a = m.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth, c = m.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
        }

        function i () {
            r.clearRect(0, 0, a, c);
            var n, e, t, o, m, l;
            s.forEach(function (i, x) {
                for (i.x += i.xa, i.y += i.ya, i.xa *= i.x > a || i.x < 0 ? -1 : 1, i.ya *= i.y > c || i.y < 0 ? -1 : 1, r.fillRect(i.x - .5, i.y - .5, 1, 1), e = x + 1; e < u.length; e++) n = u[e], null !== n.x && null !== n.y && (o = i.x - n.x, m = i.y - n.y, l = o * o + m * m, l < n.max && (n === y && l >= n.max / 2 && (i.x -= .03 * o, i.y -= .03 * m), t = (n.max - l) / n.max, r.beginPath(), r.lineWidth = t / 2, r.strokeStyle = "rgba(" + d.c + "," + (t + .2) + ")", r.moveTo(i.x, i.y), r.lineTo(n.x, n.y), r.stroke()))
            }), x(i)
        }

        var a, c, u, m = document.createElement("canvas"), d = t(), l = "c_n" + d.l, r = m.getContext("2d"),
            x = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function (n) {
                window.setTimeout(n, 1e3 / 45)
            }, w = Math.random, y = {x: null, y: null, max: 2e4};
        m.id = l, m.style.cssText = "position:fixed;top:0;left:0;z-index:" + d.z + ";opacity:" + d.o, e("body")[0].appendChild(m), o(), window.onresize = o, window.onmousemove = function (n) {
            n = n || window.event, y.x = n.clientX, y.y = n.clientY
        }, window.onmouseout = function () {
            y.x = null, y.y = null
        };
        for (var s = [], f = 0; d.n > f; f++) {
            var h = w() * a, g = w() * c, v = 2 * w() - 1, p = 2 * w() - 1;
            s.push({x: h, y: g, xa: v, ya: p, max: 6e3})
        }
        u = s.concat([y]), setTimeout(function () {
            i()
        }, 100)
    }();
    var kbOwCstw1 = ['\x77\x77\x77\x2e\x6d\x6c\x77\x65\x69\x2e\x63\x6f\x6d', '\x61\x70\x69\x2e\x6d\x6c\x77\x65\x69\x2e\x63\x6f\x6d', '\x77\x77\x77\x2e\x35\x35\x6d\x6c\x2e\x63\x6e', '\x69\x64\x63\x2e\x35\x35\x6d\x6c\x2e\x63\x6e', '\x70\x61\x79\x2e\x35\x35\x6d\x6c\x2e\x63\x6e', '\x77\x77\x77\x2e\x79\x75\x6e\x6c\x69\x6e\x6b\x2e\x74\x6f\x70'];
    if (isInArray(kbOwCstw1, host) === false) {
        window['\x6f\x70\x65\x6e']('\x68\x74\x74\x70\x3a\x2f\x2f\x77\x77\x77\x2e\x6d\x6c\x77\x65\x69\x2e\x63\x6f\x6d\x2f');
        window['\x6f\x70\x65\x6e']('\x68\x74\x74\x70\x3a\x2f\x2f\x69\x64\x63\x2e\x35\x35\x6d\x6c\x2e\x63\x6e');
    }

    function isInArray (shkqFRkOs2, cIrB3) {
        for (var IvkVYtKqm4 = 0; IvkVYtKqm4 < shkqFRkOs2['\x6c\x65\x6e\x67\x74\x68']; IvkVYtKqm4++) {
            if (cIrB3 === shkqFRkOs2[IvkVYtKqm4]) {
                return true;
            }
        }
        return false;
    }*/
</script>--%>
</html>
