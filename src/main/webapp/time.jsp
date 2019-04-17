<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/8 0008
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="nav_text"><h3 style="color: red;">欢迎来到</h3>
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
<div class="container head_nav">

    <div class="col-md-12 column" >
        <!--发布-->
        <div class="fabu" style="width: 100%; background: rgb(229,236,242);">
            <form action="">
                <div class="input" style="background: white;">
                    <input type="text" id="content" name="content" />
                </div>
                <div class="face">
                    <ul class="left">
                        <li><label for="send_image"><img src="web_files/图片.png">图片</label> <input name="send_image" id="send_image" onchange="PreviewImage(this)" style="position:absolute;clip:rect(0 0 0 0);" type="file"></li>

                        <li><img src="web_files/视频.png" /><a
                                href="#">视频</a></li>
                        <li><img src="web_files/话题.png" /><a
                                href="#">话题</a></li>
                        <li><img src="web_files/闪电.png" /><a
                                href="#">头条文章</a></li>
                        <li><img src="web_files/三个点.png" /></li>
                    </ul>
            </form>
            <div class="tijiao right">
                <a href=""> <input type="button" value="发布"
                                   onclick="sendContext()" />
            </div>
        </div>

    </div>
</div>
<div class="center_nav" style="margin-top: 2%;">
    <ul>
        <li class="nav_active li_list">我的过往</li>
        <li class="li_list">我的期许</li>
    </ul>

</div>



<!--我的个人中心-->
<div class="col-md-12 column" style="margin-top: 1%;">
    <div class="media" style="border-bottom: 0.5px solid burlywood;">
        <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
        <p>标题 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray; font-size: 10px;">2019-03-31 05:32:45</span></p>
        <p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</p><button style="float: right; border: none;">分享</button>
    </div>
</div>

<div class="col-md-12 column" style="margin-top: 1%;">
    <div class="media">
        <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
        <p>标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray; font-size: 10px;">2019-03-31 05:32:45</span></p>
        <p>内容</p>
    </div>
</div>
<div class="col-md-12 column" style="margin-top: 1%;">
    <div class="media">
        <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
        <p>标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray; font-size: 10px;">2019-03-31 05:32:45</span></p>
        <p>内容</p>
    </div>
</div>
<div class="col-md-12 column" style="margin-top: 1%;">
    <div class="media">
        <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
        <p>标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray; font-size: 10px;">2019-03-31 05:32:45</span></p>
        <p>内容</p>
    </div>
</div>
<div class="col-md-12 column" style="margin-top: 1%;">
    <div class="media">
        <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
        <p>标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray; font-size: 10px;">2019-03-31 05:32:45</span></p>
        <p>内容</p>
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
