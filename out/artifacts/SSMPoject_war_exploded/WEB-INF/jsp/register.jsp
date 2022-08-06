<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1ab94d0eba.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>注册</title>
    <link rel="stylesheet" href="../../static/CSS/style.css">
</head>
<body>
<a style="position:absolute;top:1%;left:1px;font-size: 30px; color: orangered" >【简印】</a>
<main class="container">
    <h2>Register</h2>
    <form id="myForm" action="${pageContext.request.contextPath}/user/register" method="post">
        <div class="input-field">
            <input type="text" name="name" id="username"
                   placeholder="Username" required><span id="msg"></span>
            <div class="underline"></div>
        </div>
        <div class="input-field">
            <input type="password" name="password" id="password"
                   placeholder="Password" required>
            <div class="underline"></div>
        </div>
        <br>
        <div class="input-field">
            <input type="email" name="email" id="email"
                   placeholder="email" required>
            <div class="underline"></div>
        </div>
        <br>
        <div class="input-field">
            <tr>
                <td width="107" height="35" ><font size="4" color="#21ebff">身份&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</font></td>
                <td>
                    <select size="1" style="width:100px;font-size:15px;background:#333333;color: white;padding: 0 0 0 20px;" name="type">
                        <option value="用户">用户</option>
                        <option value="管理员"></option>
                    </select>
                </td>
            </tr>
        </div>
        <br>
        <div class="footer">
            <div class="social-fields">
            </div>
            <div class="social-fields">
                <button type="submit" class="social-field login">注册</button>
            </div>
        </div>
    </form>
</main>
<h3 style="width: 100px;text-align: center;background: deepskyblue;border-radius: 10px;position: absolute;top: 3%;left: 90%;">
    <a href="${pageContext.request.contextPath}/index.jsp"
       style="text-decoration: none;
      color: black;
      font-size: 18px;">返回主页</a>
</h3>


<a style="color: #3498bd;font-size:12px;position: absolute;top: 95%;left: 48%">
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
</body>
<script type="text/javascript">
    $(function(){
        $("#username").blur(function(){//当xxx失去焦点时
            var username = $(this).val();//获取id为xxx的元素
            var msg=$("#msg").val();
            $.ajax({
                url:"${pageContext.request.contextPath}/zc",
                type:"post",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data:{"name":username},
                success:function (data){
                    var isExit=parseInt(data.toString());
                    var usernameInfo ="";
                    if (isExit==1){
                        usernameInfo = "该用户名太受欢迎啦,请换一个吧!";
                        $("#msg").css("color","red");
                    }else if(isExit==3){
                        usernameInfo = "该用户名可以使用";
                        $("#msg").css("color","green");
                    }else if(isExit==2){
                        usernameInfo = "请输入用户名";
                        $("#msg").css("color","red");
                    }
                    $("#msg").html(usernameInfo);
                },
                dataType:"json",
            });
        });
    });

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

    /*飘雪*/
/*    var JGtime = 500 + Math.random()*100;//产生雪片的时间间隔
    var flake = $("<div>❄</div>").css("position","absolute");//雪片对象
    $(function(){
        setInterval(function(){//间隔JGtime产生一个雪片
            var dWidth = $(document).width();//获取浏览器页面宽度
            var dHeight = $(document).height();//获取浏览器页面高度
            var startLeft = Math.random()*dWidth;//下落前左边的距离随机
            var endLeft = Math.random()*dWidth;//下落后左边的距离随机
            var flakeSize = 6 + Math.random()*50;//雪片大小
            var startOpacity = 0.7+0.3*Math.random();//开始的透明度
            var endOpacity = 0.4 + 0.3*Math.random();//落下的透明度
            var durationTime = 4000+8000*Math.random();//时间随机。所以速度随机
            flake.clone().appendTo($("body")).css({//复制一个雪片对象，添加到body，出现的位置
                "left":startLeft,
                "top":"-56px",
                "font-size":flakeSize,//大小
                "color":randomColor(),//我的雪片是白色，如果你想颜色也随机，可以参考我上一篇（H5 +JavaScript生成验证码）里面的随机颜色的方法。
                "opacity":startOpacity
            }).animate({
                "left":endLeft,
                "opacity":endOpacity,
                "top":dHeight
            },durationTime,function(){
                $(this).remove();//当雪片到最后，调用回调函数，让他消失，是为了保持页面流畅
            });//经过一个随机的时间，变成上面的状态
        },JGtime);
    });*/
</script>
</html>
