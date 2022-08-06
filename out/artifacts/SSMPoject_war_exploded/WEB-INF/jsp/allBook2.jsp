<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>layout 管理系统大布局 - Layui</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui-v2.6.8/layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black"><a style="color: #B5FFF8;font-size: 30px">【简印】</a></div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="">nav 1</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">nav 2</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">nav 3</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">nav groups</a>
                <dl class="layui-nav-child">
                    <dd><a href="">menu 11</a></dd>
                    <dd><a href="">menu 22</a></dd>
                    <dd><a href="">menu 33</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
                    tester
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本信息</a></dd>
                    <dd><a href="">设置</a></dd>
                    <dd><a href="">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-more-vertical"></i>
                </a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">仓库信息</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">库存</a></dd>
                        <dd><a href="javascript:;">进货</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">销售信息</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">在售书籍</a></dd>
                        <dd><a href="javascript:;">订单</a></dd>
                        <dd><a href="javascript:;">会员信息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">工作人员信息</a></li>
                <li class="layui-nav-item"><a href="">the links</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="background: hsla(0,0%,98%,.8)">
        <div style="padding: 15px;">内容主体区域。</div>
    </div>

    <!--  <div class="layui-footer" style="background: #EAEAEF">-->
    <div class="layui-footer" style="background: hsla(0,0%,98%,.8)">
        底部固定区域
    </div>
</div>
<script src="layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>
