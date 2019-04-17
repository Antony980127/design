<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/8 0008
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0052)WeiBo/system/jsp/index.jsp -->
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<base href="WeiBo/">--><base href=".">

    <title></title>

    <link rel="stylesheet" href="<%=basePath%>web_files/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath%>web_files/index.css" type="text/css">
    <link rel="stylesheet" type="image/vnd.microsoft.icon" href="<%=basePath%>web_files/favicon (1).ico">

    <script type="text/javascript" src="<%=basePath%>js/jquery.min.js" ></script>
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>/photos.css" type="text/css" />
    <script src="<%=basePath%>web_files/jquery-1.7.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>web_files/zhuye.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>web_files/index.js" type="text/javascript">
    </script>


    <script type="text/javascript">
        function selectimg(){
            $("#file").trigger("click");


        }

        function checkUser(path) {
            var account = 'null';
            if (account == null || account == undefined || account == '' || account == "null") {
                alert("请先登录！");
                window.location.href =path + "/system/jsp/login.jsp";
                return;
            } else {
                var content = $("#content").val();
                if (content == null || content == undefined || content == '') {
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
            if (account == null || account == undefined || account == '' || account == "null") {
                alert("请先登录！");
                window.location.href = path + "/system/jsp/login.jsp";
                return;
            } else {

                var name = "#comment" + newsID;
                var comment = $(name).val(); //评论的内容
                if (comment == null || comment == undefined || comment == '') {
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
            if (account == null || account == undefined || account == '' || account == "null") {
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
            if ((filextension != '.jpg') && (filextension != '.gif') && (filextension != '.jpeg') && (filextension != '.png') && (filextension != '.bmp')) {
                alert("对不起，系统仅支持标准格式的照片，请您调整格式后重新上传，谢谢 !");
                imgFile.focus();
            } else {
                var path;
                if (document.all) {
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
                imgFile.disabled=false;
            }
        }
    </script>
</head>

<body style="overflow-x:hidden">
<!--头部展示-->
<div class="container nav_container">

    <div class="col-md-12 column" >
        <div class="nav_text"><h3 style="color: red;">欢迎来到</h3>
            <h2 style="color: black">你的时光秀</h2>

        </div>
    </div>


    <div class="col-md-12 column">
        <div class="headImg" onclick="selectImg()">
            <form action="#	">
                <input type="file" id="upload_file" style="display: none;" accept="image/jpeg, image/gif" />
            </form>
            <img style="width: 90px;" src="img/hg.jpg"/>
        </div>
        <div class="user_name">昵称：AmeK
            <p>暂无简介</p>
        </div>
    </div>

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
                                    <div class="touxiang" onclick="indexJS.newsDetail(&#39;/WeiBo&#39;,62)">
                                        <img src="web_files/tx1.jpg">
                                    </div>
                                    <div class="indexHover">
                                        <ul>
                                            <li><a href="WeiBo/#">帮助上头条</a></li>
                                            <li><a href="WeiBo/#">屏蔽这条微博</a></li>
                                            <li><a href="WeiBo/#">屏蔽 美妆小丫丫</a></li>
                                            <li><a href="WeiBo/#">取消关注美妆小丫丫</a></li>
                                            <li><a href="WeiBo/delete?newID=62">删除</a></li>
                                        </ul>
                                    </div>
                                    <h5>
                                        1234 <span class="V"></span> <span class="top1"></span><img class="right" src="web_files/箭头.png">
                                    </h5>
                                    <p class="fabutime" onclick="indexJS.newsDetail('')">
                                        <a>2018-06-22 09:16:03</a> 来自 <a href="WeiBo/#">手机微博触屏版</a>
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
                                    <li><span><img id="collection62" onclick="addCollection('')" src="web_files/收 藏 (1).png"> 收藏</span></li>
                                    <li><span><img src="web_files/分享.png"> 17</span></li>
                                    <li class="liuyan"><span><img src="web_files/留言.png"> 34</span></li>
                                    <li><span> <img id="fabulous62" src="web_files/点赞 (1).png" onclick="indexJS.fabulous('')">
												<text id="fabulousNum62">1</text>
										</span></li>
                                </ul>
                                <div class="pinglun">

                                    <div class="pltouxiang">
                                        <div class="left">
                                            <img src="web_files/default_avatar_female_50.gif">
                                        </div>
                                        <div class="plcontent right">
                                            <div>
                                                <input type="text" name="comment62" id="comment62" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="plcheck right">
                                        <div class="left">

                                        </div>
                                        <div class="right sub">
                                            <input type="button" value="评论" onclick="comment()">
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
