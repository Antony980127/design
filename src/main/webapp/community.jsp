
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0052)WeiBo/system/jsp/index.jsp -->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<base href="WeiBo/">-->
    <base href=".">

    <title></title>

    <link rel="stylesheet" href="web_files/font-awesome.min.css">
    <link rel="stylesheet" href="web_files/index.css">
    <link rel="stylesheet" type="image/vnd.microsoft.icon" href="web_files/favicon (1).ico">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/photos.css" />
    <script src="web_files/jquery-1.7.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="web_files/zhuye.js" type="text/javascript" charset="utf-8"></script>
    <script src="web_files/index.js" type="text/javascript">
    </script>

    <script type="text/javascript">
        function selectimg() {
            $("#file").trigger("click");

        }

        function checkUser(path) {
            var account = 'null';
            if(account == null || account == undefined || account == '' || account == "null") {
                alert("请先登录！");
                window.location.href = path + "/system/jsp/login.jsp";
                return;
            } else {
                var content = $("#content").val();
                if(content == null || content == undefined || content == '') {
                    alert("发布内容为空！");
                    return;
                } else {
                    $("#fabuForm").submit();
                }
            }
        }

        function sendComment(path, newsID) {
            //评论的用户
            var account = 'null';
            if(account == null || account == undefined || account == '' || account == "null") {
                alert("请先登录！");
                window.location.href = path + "/system/jsp/login.jsp";
                return;
            } else {

                var name = "#comment" + newsID;
                var comment = $(name).val(); //评论的内容
                if(comment == null || comment == undefined || comment == '') {
                    alert("评论内容为空！");
                    return;
                } else {
                    indexJS.sendCommentContent(path, comment, account, newsID);
                }
            }
        }

        function addCollection(path, newsID) {
            //评论的用户
            var account = 'null';
            if(account == null || account == undefined || account == '' || account == "null") {
                alert("请先登录！");
                window.location.href = path + "system/jsp/login.jsp";
                return;
            } else {
                indexJS.collection(path, newsID, account);
            }
        }

        //图片预览功能
        function PreviewImage(imgFile) {
            var filextension = imgFile.value.substring(imgFile.value.lastIndexOf("."), imgFile.value.length);
            filextension = filextension.toLowerCase();
            if((filextension != '.jpg') && (filextension != '.gif') && (filextension != '.jpeg') && (filextension != '.png') && (filextension != '.bmp')) {
                alert("对不起，系统仅支持标准格式的照片，请您调整格式后重新上传，谢谢 !");
                imgFile.focus();
            } else {
                var path;
                if(document.all) {
                    imgFile.select();
                    path = document.selection.createRange().text;
                    document.getElementById("imgPreview").innerHTML = "";
                    document.getElementById("imgPreview").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")"; //使用滤镜效果
                } else {
                    path = window.URL.createObjectURL(imgFile.files[0]);
                    document.getElementById("imgPreview").innerHTML = "<img id='img1' width='180px' height='200px' src='" + path + "'/>";
                }
                var img = document.getElementById("imgPreview");
                img.style.display = 'block';
                imgFile.disabled = false;
            }
        }
    </script>
</head>

<body style="overflow-x:hidden">

<div class="col-md-12 column">
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="#">首页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="index.jsp">个人中心</a>
                </li>
                <li>
                    <a href="photounity.jsp">流沙岁月社区</a>
                </li>
                <li class="active">
                    <a href="community.jsp">时光胶囊社区</a>
                </li>
                <li>
                    <a href="history.jsp">历史长河</a>
                </li>
                <li>
                    <a href="#">热门推荐</a>
                </li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">登录/注册</a>
                </li>

            </ul>
        </div>

    </nav>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-1 column"></div>
        <div class="col-md-9 column">

            <!--中间内容-->
            <div class="indexBox">
                <!--左侧导航固定-->
                <!--中间内容-->
                <div class="indexContBox">
                    <div>
                        <div class="indexLists">
                            <div class="indexList" style="width: 800px;">

                                <div class="indexItem">
                                    <div class="touxiang">
                                        <img src="web_files/tx1.jpg">
                                    </div>

                                    <h5>
                                        1234
                                        <span style="float: right;">TO:  <text style="color:red">Antony</text></span>
                                    </h5>
                                    <p class="fabutime" onclick="indexJS.newsDetail('')">
                                        <a>2018-06-22 09:16:03</a>
                                    </p>
                                    <div class="fabuContent">
                                        <p>什么事？</p>

                                    </div>
                                    <div class="indexImg" onclick="indexJS.newsDetail('')">

                                    </div>
                                </div>
                            </div>
                            <div class="listFooter" style="height: 35px;width: 800px;">
                                <ul>

                                    <li class="liuyan " style="cursor: pointer;"><span><img src="web_files/留言.png">点击留言</span></li>
                                    <li style="cursor: pointer;"><span> <img id="fabulous62" src="web_files/点赞 (1).png" onclick="indexJS.fabulous('')">
												<text id="fabulousNum62">1</text>
										</span></li>
                                </ul>
                                <div class="pinglun">

                                    <div class="pltouxiang">

                                        <div class="plcontent right">
                                            <div>
                                                <input type="text" name="comment62" id="comment62" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="plcheck right">

                                        <div class="right sub">
                                            <input type="button" value="评论" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--评论-->
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>