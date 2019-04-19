

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>登录表单</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <!-- Style --> <link rel="stylesheet" href="css/login.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

<h1>登录表单</h1>

<div class="container w3layouts agileits">

    <div class="login w3layouts agileits">
        <h2>登 录</h2>
        <form action="login" method="post">
            <input type="text" Name="username" placeholder="用户名" required="">
            <input type="password" Name="password" placeholder="密码" required="">

        <div class="send-button w3layouts agileits">

                <input type="submit" value="登 录">
        </div>
        </form>
        <a href="#">记住密码?</a>
        <!--<div class="social-icons w3layouts agileits">
            <p>- 其他方式登录 -</p>
            <ul>
                <li class="qq"><a href="#">
                <span class="icons w3layouts agileits"></span>
                <span class="text w3layouts agileits">QQ</span></a></li>
                <li class="weixin w3ls"><a href="#">
                <span class="icons w3layouts"></span>
                <span class="text w3layouts agileits">微信</span></a></li>
                <li class="weibo aits"><a href="#">
                <span class="icons agileits"></span>
                <span class="text w3layouts agileits">微博</span></a></li>
                <div class="clear"> </div>
            </ul>
        </div>-->
        <div class="clear"></div>
    </div>
    <div class="register w3layouts agileits">
        <h2>注 册</h2>
        <form action="#" method="post">
            <input type="text" Name="username" placeholder="用户名" required="">
            <input type="text" Name="email" placeholder="邮箱" required="">
            <input type="password" Name="password" placeholder="密码" required="">
            <input type="text" Name="phoneNum" placeholder="手机号码" required="">
        </form>
        <div class="send-button w3layouts agileits">
            <form>
                <input type="submit" value="免费注册">
            </form>
        </div>
        <div class="clear"></div>
    </div>

    <div class="clear"></div>

</div>


</body>
<!-- //Body -->

</html>