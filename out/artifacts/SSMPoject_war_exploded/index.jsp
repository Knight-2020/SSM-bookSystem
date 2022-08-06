<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 10px;
    }
  </style>
  <link rel="stylesheet" href="../static/CSS/style.css">
  <script src="https://kit.fontawesome.com/1ab94d0eba.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js"></script>
  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<h1 style="color: #04ffff;position: absolute;left: 22%;top: 70px;font-size:70px;">
  <a style="position:relative;font-size: 70px; color: orangered" >【简印】</a>
  图书管理系统</h1>
<h3>
  <a href="${pageContext.request.contextPath}/book/allBook">书籍列表</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/user/tologin">登录</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/user/toregister">注册</a>
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

</body>
<script type="text/javascript" src="static/js/飘雪demo1.js"></script>
<script type="text/javascript" src="static/js/点击.js">
/*  (function() {

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

  }())*/
/*  onload = function() {
    var click_cnt = 0;
    var $html = document.getElementsByTagName("html")[0];
    var $body = document.getElementsByTagName("body")[0];
    $html.onclick = function(e) {
      var $elem = document.createElement("b");
      $elem.style.color = "#E94F06";
      $elem.style.zIndex = 9999;
      $elem.style.position = "absolute";
      $elem.style.select = "none";
      var x = e.pageX;
      var y = e.pageY;
      $elem.style.left = (x - 10) + "px";
      $elem.style.top = (y - 20) + "px";
      clearInterval(anim);
      switch (++click_cnt) {
        case 10:
          $elem.innerText = "OωO";
          break;
        case 20:
          $elem.innerText = "(๑•́ ∀ •̀๑)";
          break;
        case 30:
          $elem.innerText = "(๑•́ ₃ •̀๑)";
          break;
        case 40:
          $elem.innerText = "(๑•̀_•́๑)";
          break;
        case 50:
          $elem.innerText = "（￣へ￣）";
          break;
        case 60:
          $elem.innerText = "(╯°口°)╯(┴—┴";
          break;
        case 70:
          $elem.innerText = "૮( ᵒ̌皿ᵒ̌ )ა";
          break;
        case 80:
          $elem.innerText = "╮(｡>口<｡)╭";
          break;
        case 90:
          $elem.innerText = "( ง ᵒ̌皿ᵒ̌)ง⁼³₌₃";
          break;
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
          $elem.innerText = "(ꐦ°᷄д°᷅)";
          break;
        default:
          $elem.innerText = "❤";
          break;
      }
      $elem.style.fontSize = Math.random() * 10 + 8 + "px";
      var increase = 0;
      var anim;
      setTimeout(function() {
        anim = setInterval(function() {
          if (++increase == 150) {
            clearInterval(anim);
            $body.removeChild($elem);
          }
          $elem.style.top = y - 20 - increase + "px";
          $elem.style.opacity = (150 - increase) / 120;
        }, 8);
      }, 70);
      $body.appendChild($elem);
    };
  };*/
</script>
</html>
