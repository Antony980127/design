
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
    <title></title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/photos.css" />

</head>
<script type="text/javascript">
    function selectImg() {

        document.getElementById("upload_file").click();
    }
</script>

<body>

<!--头部展示-->
<div class="container nav_container">

    <div class="col-md-12 column">
        <div class="nav_text">
            <h3 style="color: red;">欢迎来到</h3>
            <h2 style="color: black">你的时光秀</h2>
        </div>
    </div>

    <div class="col-md-12 column">
        <div class="headImg" onclick="selectImg()">
            <form action="#	">
                <input type="file" id="upload_file" style="display: none;" accept="image/jpeg, image/gif" />
            </form>
            <img style="width: 90px;" src="img/hg.jpg" />
        </div>
        <div class="user_name">昵称：AmeK
            <p>暂无简介</p>
        </div>
    </div>

</div>
<!--导航栏-->
<div class="container nav_list">
    <div class="col-md-12 column nav_list_top">
        <ul>
            <li id="album" class="avtive_list li_list">
                <h4>我的相册</h4></li>
            <li id="addAlbum" class="li_list">
                <h4>新增相册</h4></li>
            <!--<li id="" class="li_list"><h4>编辑</h4></li>-->

        </ul>

    </div>

</div>

<div class="container photos">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <!--相册列表-->
            <div id="albumPanel" class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/people/default.jpg" />
                        <div class="caption">
                            我的大学
                            <text id="delete"  style="float: right;">删除</text>
                            <a id="updateAlbum" style="float: right;">更新</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/city/default.jpg" />
                        <div class="caption">
                            我的大学
                            <text id="delete"  style="float: right;">删除</text>

                            <a id="updateAlbum" style="float: right;">更新</a>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/sports/default.jpg" />
                        <div class="caption">
                            我的大学
                            <text id="delete"  style="float: right;">删除</text>

                            <a id="updateAlbum" style="float: right;">更新</a>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/sports/default.jpg" />
                        <div class="caption">
                            我的大学
                        </div>
                    </div>
                </div>
            </div>
            <!--新增相册-->
            <div id="addAlbumPanel" class="row">
                <!--表单-->
                <form style="margin: 0 auto;width: 400px;">
                    <div class="form-group">
                        <label for="albumName">相册名称</label>
                        <input type="text" class="form-control" id="albumName" placeholder="请输入相册名称">
                    </div>
                    <div class="form-group">
                        <label for="albumDesc">相册描述</label>
                        <input type="text" class="form-control" id="albumDesc" placeholder="请输入相册描述">
                    </div>
                    <button type="submit" class="btn btn-success">创建</button>
                </form>
            </div>

            <!--更新相册面板-->
            <div id="updateAlbumPanel" class="row">
                <div class="row">
                    <a id="backToAlbum" href="">返回</a>
                </div>
                更新相册面板
            </div>
        </div>
    </div>
</div>

</body>

<script>
    //初始化面板
    $("#addAlbumPanel").hide();
    $("#updateAlbumPanel").hide();

    $(".li_list").click(function() {

        $(this).toggleClass("avtive_list");

        $(this).siblings().removeClass("avtive_list");

    })

    $("#album").click(function() {
        console.log("123")
        $("#albumPanel").show();
        $("#addAlbumPanel").hide();

    })
    $("#addAlbum").click(function() {
        $("#albumPanel").hide();
        $("#addAlbumPanel").show();
    })
    $("#updateAlbum").click(function() {
        $("#updateAlbumPanel").show();
        $("#albumPanel").hide();

    })
    //返回到列表
    $("#backToAlbum").click(function() {
        $("#updateAlbumPanel").hide();
        $("#albumPanel").show();
    })
</script>

</html>