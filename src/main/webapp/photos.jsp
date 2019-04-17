<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/8 0008
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/photos.css" type="text/css"/>

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
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">File input</label>
                        <input type="file" id="exampleInputFile">
                        <p class="help-block">Example block-level help text here.</p>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Check me out
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
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
