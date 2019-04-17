<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/8 0008
  Time: 15:25
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
<link rel="stylesheet" href="css/private.css" />

<body>

<!--头部展示-->
<div class="container nav_container">

    <div class="col-md-12 column" >
        <div class="nav_text"><h3 style="color: red;">欢迎来到</h3>
            <h2 style="color: black">私人空间</h2>

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
<!--导航栏-->
<div class="container nav_list">
    <div  class="col-md-12 column nav_list_top">
        <ul>
            <li onclick="showDetail()" class="avtive_list li_list"><h4>账号信息</h4></li>
            <li onclick="updatePwd()" class="li_list"><h4>修改密码</h4></li>


        </ul>

    </div>

</div>

<!--个人信息详情-->
<div class="container" id="detail" >
    <div class="col-md-3">
    </div>
    <div class="col-md-8" style="margin-top: 2%;">
        <form action="##" >



            <div class="form-group">
                <label for="exampleInputEmail1">用户名：</label><input type="text" value="123456" class="form-control" id="exampleInputEmail" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">密码：</label><input type="text" value="2222" class="form-control" id="exampleInputPassword" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">座右铭：</label><input type="text" value="老骥伏枥，志在千里" class="form-control" id="exampleInputPassword2" />
            </div>
            <button style="margin-left: 40%; background: lightskyblue;" type="submit" class="btn btn-default">更新</button>
        </form>
    </div>

</div>

<!--个人信息详情-->
<div class="container" style="display:none" id="updatePwd">
    <div class="col-md-3">
    </div>
    <div class="col-md-8" style="margin-top: 2%;">
        <form action="##" >
            <div class="form-group">
                <label for="exampleInputEmail1">原密码：</label><input type="text" value="" class="form-control" id="exampleInputEmail1" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">新密码：</label><input type="text" value="" class="form-control" id="exampleInputPassword1" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">新密码：</label><input type="text" value="" class="form-control" id="exampleInputPassword3" />
            </div>
            <button style="margin-left: 40%; background: lightskyblue;" type="submit" class="btn btn-default">修改</button>
        </form>
    </div>

</div>


</body>
<script>

    $(".li_list").click(function(){

        $(this).toggleClass("avtive_list");

        $(this).siblings().removeClass("avtive_list");

    })
    function showDetail(){
        document.getElementById("updatePwd").style.display="none";//隐藏
        document.getElementById("detail").style.display="block";//展示


    }

    function updatePwd(){
        document.getElementById("updatePwd").style.display="block";//隐藏
        document.getElementById("detail").style.display="none";//展示

    }
</script>

</html>

