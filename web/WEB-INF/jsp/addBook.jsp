<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
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
                    <small><b style="font-size: 25px">书籍列表</b>----新增书籍</small>
                    <img src="/static/img/9.jpg" height="40px" width="40px" style="border-radius: 200px;position: absolute;left: 82%"/>
                    <a style="font-size: 17px;color:black;position: absolute;left: 86%;top: 35%">用户 : ${sessionScope.get("userLoginInfo")}</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout" style="position: relative; float: right;margin:0;font-size: 16px">注销</a>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" class="form-control" id="bkname" name="bookName" required>
        </div>
        <div class="form-group">
            <label for="bknum">书籍数量:</label>
            <input type="text" class="form-control" id="bknum" name="bookCounts" required>
        </div>
        <div class="form-group">
            <label for="bkdetail">书籍描述:</label>
            <input type="text" class="form-control" id="bkdetail" name="detail" required>
        </div>
        <button type="submit" class="btn btn-primary">添加</button>
        <a  id="layerBtn" <%--href="javascript:history.back()"--%> class="btn btn-default">取消</a>
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
        $('#layerBtn').on('click', function (e) {
            // 调用的layer弹窗
            layer.msg('取消添加！')
            setTimeout(function () {
                history.back();
            },800)
        })
    })






    !function() {
        function o(w, v, i) {
            return w.getAttribute(v) || i
        }
        function j(i) {
            return document.getElementsByTagName(i)
        }
        function l() {
            var i = j("script"),
                w = i.length,
                v = i[w - 1];
            return {
                l: w,
                z: o(v, "zIndex", -1),
                o: o(v, "opacity", 0.5),
                c: o(v, "color", '#FF0000'),
                n: o(v, "count", 99)
            }
        }
        function k() {
            r = u.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth, n = u.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
        }
        function b() {
            e.clearRect(0, 0, r, n);
            var w = [f].concat(t);
            var x, v, A, B, z, y;
            t.forEach(function(i) {
                i.x += i.xa, i.y += i.ya, i.xa *= i.x > r || i.x < 0 ? -1 : 1, i.ya *= i.y > n || i.y < 0 ? -1 : 1, e.fillRect(i.x - 0.5, i.y - 0.5, 1, 1);
                for (v = 0; v < w.length; v++) {
                    x = w[v];
                    if (i !== x && null !== x.x && null !== x.y) {
                        B = i.x - x.x, z = i.y - x.y, y = B * B + z * z;
                        y < x.max && (x === f && y >= x.max / 2 && (i.x -= 0.03 * B, i.y -= 0.03 * z), A = (x.max - y) / x.max, e.beginPath(), e.lineWidth = A / 2, e.strokeStyle = "rgba(" + s.c + "," + (A + 0.2) + ")", e.moveTo(i.x, i.y), e.lineTo(x.x, x.y), e.stroke())
                    }
                }
                w.splice(w.indexOf(i), 1)
            }), m(b)
        }
        var u = document.createElement("canvas"),
            s = l(),
            c = "c_n" + s.l,
            e = u.getContext("2d"),
            r, n, m = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
                function(i) {
                    window.setTimeout(i, 1000 / 45)
                }, a = Math.random, f = {
                x: null,
                y: null,
                max: 20000
            };
        u.id = c;
        u.style.cssText = "position:fixed;top:0;left:0;z-index:" + s.z + ";opacity:" + s.o;
        j("body")[0].appendChild(u);
        k(), window.onresize = k;
        window.onmousemove = function(i) {
            i = i || window.event, f.x = i.clientX, f.y = i.clientY
        }, window.onmouseout = function() {
            f.x = null, f.y = null
        };
        for (var t = [], p = 0; s.n > p; p++) {
            var h = a() * r,
                g = a() * n,
                q = 2 * a() - 1,
                d = 2 * a() - 1;
            t.push({
                x: h,
                y: g,
                xa: q,
                ya: d,
                max: 6000
            })
        }
        setTimeout(function() {
            b()
        }, 100)
    }();
</script>
</html>
