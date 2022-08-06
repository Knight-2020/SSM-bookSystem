<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1ab94d0eba.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>登录</title>
    <link rel="stylesheet" href="../../static/CSS/style.css">
</head>
<body>
<a style="position:absolute;top:1%;left:1px;font-size: 30px; color: orangered" >【简印】</a>
<main class="container">
    <h2>Login</h2>
    <form id="denglu" action="${pageContext.request.contextPath}/user/login" method="post">
        <div class="input-field">
            <input type="text" name="userName" id="name"
                   placeholder="Username" required>
            <div class="underline"></div>
        </div>
        <div class="input-field">
            <input type="password" name="password" id="password"
                   placeholder="Password">
            <div class="underline"></div>
        </div>
        <br>
        <div class="input-field">
            <tr>
                <td width="107" height="35" ><font size="4" color="#21ebff">身份&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</font></td>
                <td>
                    <select size="1" style="width:100px;font-size:15px;background:#333333;color: white;padding: 0 0 0 20px;" name="type">
                        <option value="用户">用户</option>
                        <option value="管理员">管理员</option>
                    </select>
                </td>
            </tr>
        </div>

        <div class="footer">
            <div class="social-fields">
                <button id="login" type="submit" class="social-field login" >登录</button>
            </div>
        </div>
    </form>
    <div class="footer">
        <div class="social-fields">
            <button type="submit" class="social-field login" onclick="window.location.href ='${pageContext.request.contextPath}/user/toregister'">注册</button>
        </div>
    </div>
</main>
<h3 style="width: 100px;text-align: center;background: deepskyblue;border-radius: 10px;position: absolute;top: 3%;left: 90%;">
    <a href="${pageContext.request.contextPath}/index.jsp"
       style="text-decoration: none;
      color: black;
      font-size: 18px;">返回主页</a>
</h3>


<a style="color: #3498bd;font-size:13px;position: absolute;top: 95%;left: 48%">
    侠客&nbsp;&copy;
</a>
<a style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 80%">
    友情链接:
</a>
<a href="https:/www.baidu.com" target="_blank" style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 86%">
    百度
</a>
<a href="https://www.csdn.net/" target="_blank" style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 89%">
    CSDN
</a>
<a href="https://www.cnblogs.com/" target="_blank" style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 93%">
    博客园
</a>
<a style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 4%">
    点击联系我：
</a>
<a href="mailto:jia4947@outlook.com" style="color: #3498bd;font-size:14px;position: absolute;top: 95%;left: 11%">
    邮箱
</a>
<script src="../../layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>
</body>
<script type="text/javascript">
    var a_idx = 0;
    jQuery(document).ready(function($) {
        $("body").click(function(e) {
            var a = new Array("❤富强❤", "❤民主❤", "❤文明❤", "❤和谐❤", "❤自由❤", "❤平等❤", "❤公正❤" ,"❤法治❤", "❤爱国❤", "❤敬业❤", "❤诚信❤", "❤友善❤");
            var $i = $("<span/>").text(a[a_idx]);
            a_idx = (a_idx + 1) % a.length;
            var x = e.pageX,
                y = e.pageY;
            $i.css({
                "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
                "top": y - 20,
                "left": x,
                "position": "absolute",
                "font-weight": "bold",
                "color": randomColor()
            });
            $("body").append($i);
            $i.animate({
                    "top": y - 180,
                    "opacity": 0
                },
                1500,
                function() {
                    $i.remove();
                });
        });
    });

    // 随机颜色
    function randomColor() {

        return "rgb(" + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + ")";

    }


/*layer.open({
    title: '在线调试'
    ,content: '配置各种参数，试试效果'
});*/

</script>
</html>
