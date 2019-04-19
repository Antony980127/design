
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
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/index.css" />

</head>
<body>
<div class="col-md-12 column">
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="#">首页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li >
                    <a href="index.jsp">个人中心</a>
                </li>
                <li>
                    <a href="photounity.jsp">流沙岁月社区</a>
                </li>
                <li>
                    <a href="community.jsp">时光胶囊社区</a>
                </li>
                <li class="active">
                    <a href="listHistory">历史长河</a>
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


<!--轮播-->
<div class="row" >
    <div class="col-md-8 col-md-offset-2" >

        <div class="carousel slide" id="carousel-17655">
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#carousel-17655">
                </li>
                <li data-slide-to="1" data-target="#carousel-17655">
                </li>
                <li data-slide-to="2" data-target="#carousel-17655">
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/1/default.jpg" />

                </div>
                <div class="item">
                    <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/2/default.jpg" />

                </div>
                <div class="item">
                    <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/3/default.jpg" />

                </div>
            </div> <a class="left carousel-control" href="#carousel-17655" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-17655" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </div>
</div>

<!--内容-->
<div class="row">
    <div class="col-md-8 col-md-offset-2">

        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/people/default.jpg" />
                    <div class="caption">
                        <h3>
                            Thumbnail label
                        </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/city/default.jpg" />
                    <div class="caption">
                        <h3>
                            Thumbnail label
                        </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <img alt="300x200" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/600/200/sports/default.jpg" />
                    <div class="caption">
                        <h3>
                            Thumbnail label
                        </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>


</div>



</body>
</html>
