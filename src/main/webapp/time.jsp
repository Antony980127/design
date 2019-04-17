
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
</head>
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/person.css" />
<script type="text/javascript" src="js/jquery.min.js" ></script>
<link rel="stylesheet" href="web_files/index.css">
<link rel="stylesheet" type="image/vnd.microsoft.web_files" href="web_files/favweb_files (1).ico">
<script src="web_files/zhuye.js" type="text/javascript" charset="utf-8"></script>
<script src="web_files/index.js" type="text/javascript">
</script>
<script type="text/javascript">

    function selectImg(){

        document.getElementById("upload_file").click();
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

<body>
<div class="container nav_container">
    <div class="col-md-12 column" >
        <div class="nav_text">
            <h3 style="color: red;">欢迎来到</h3>
            <h2 style="color: black">你创造的世界</h2>
        </div>
    </div>
    <div class="col-md-12 column">
        <div class="headImg" onclick="selectImg()">
            <input type="file" id="upload_file" style="display: none;" accept="image/jpeg, image/gif" />
            <img style="width: 90px;" src="img/hg.jpg"/>
        </div>
        <div class="user_name">昵称：AmeK
            <p>暂无简介</p>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12" >
            <h1>保存的时空</h1>
            <div class="row">
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
                        <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/people/default.jpg" />
                        <div class="caption">
                            我的大学
                            <text id="delete"  style="float: right;">删除</text>
                            <a id="updateAlbum" style="float: right;">更新</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">

            <h1>发布的时空</h1>
        </div>
    </div>
</div>



</body>
<script>



    $(".li_list").click(function(){

        $(this).toggleClass("nav_active");

        $(this).siblings().removeClass("nav_active");

    })

</script>
</html>
