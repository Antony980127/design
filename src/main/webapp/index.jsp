
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">

    <link rel="stylesheet" href="css/index.css"  type="text/css" />
    <script type="text/javascript" src="js/jquery-2.2.3.js" ></script>
</head>
<body>
<div class="col-md-12 column">
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">首页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">个人中心</a>
                </li>
                <li>
                    <a href="#">流沙岁月社区</a>
                </li>
                <li class="dropdown" onclick="change5()" id="timeId">
                    <a href="#" >时光胶囊社区</a>

                </li>
                <li><a href="#">热门推荐</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">登录/注册</a>
                </li>

            </ul>
        </div>

    </nav>
</div>

<div class="row clearfix" >
    <div class="col-md-12 column">
        <div class="row clearfix">
            <div class="col-md-2 column" id="list_nav" style="opacity: 0.7	;">
                <ul>
                    <li onclick="change2()" class="li_list nav_active li_list">流沙岁月</li>
                    <li onclick="change3()" class="li_list">时空胶囊</li>
                    <li onclick="change4()" class="li_list">个人信息</li>

                </ul>
            </div>
            <div class="col-md-10 column" style="height: 600px;">
                <iframe id="iFrame" style="float: left;" frameborder="0" src="person.jsp" name="iframe_a"  width="100%" height="100%">
                </iframe>
            </div>
        </div>
    </div>
</div>

</body>
<script>


    $(".li_list").click(function(){

        $(this).toggleClass("nav_active");

        $(this).siblings().removeClass("nav_active");

    })

    function change3(){
        document.getElementById("iFrame").src="time.jsp";
    }

    function change2(){
        document.getElementById("iFrame").src="photos.jsp";

    }
    function change4(){
        document.getElementById("iFrame").src="person.jsp";
    }
    function change5(){

        document.getElementById("iFrame").src="community.jsp";
    }
</script>
</html>
