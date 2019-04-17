$(function(){
	$("#header").load("header.html")
	$("footer").load("footer.html")
	$("header").load("headerU.html")
	
	//滚动鼠标
	$(window).scroll(function(){
		var hh=$(window).scrollTop();
		if(hh>500){
			$(".zymTop").css({"position":"fixed","top":"60px"})
		}else{
			$(".zymTop").css({"position":"static"})
		}
	})
	$(".none").toggle(function(){
		if($(window).width()<936){
			if($(this).hasClass("noneR")){
				$(".indexleft").css({display:"block",position:"fixed",
		         "z-index":"99999","top":"0","right":0,"background":"#f2f2f5","overflow-y":"auto",
		          "height":"1500px",padding:"20px"});
		    $(".none").css({right:"270px"})
		
			}else{
				$(".zyLeft").css({display:"block",position:"fixed",
		"z-index":"99999","top":"0","left":0,"background":"#f2f2f5","overflow-y":"auto",
		"height":"1500px",padding:"15px"});
		$(this).css({left:"330px"})
			}		
		}
	},function(){
		if($(this).hasClass("noneR")){
			$(".indexleft").css({display:"none"})
		$(this).css({right:"0px"})
		}else{
			$(".zyLeft").css({display:"none"})
		$(this).css({left:"0px"})
		}
		
		
	})
	$(window).resize(function(){
		if($(window).width()>936){
		$(".none").hide()
		$(".zyLeft").css({display:"block","background":"",position:"static","height":"auto",padding:"0px"});
	}
		if($(window).width()<936){
			$(".none").show()
		$(".zyLeft").css({display:"none","background":"",position:"static","height":"auto",padding:"0px"});
	}
	})
	//置顶
	$(".indexItem h5 img").toggle(function(){
		$(this).parent().parent().find(".indexHover").show();
	
	},function(){
			$(this).parent().parent().find(".indexHover").hide();
	})
	//评论
	$(".liuyan").toggle(function(){
		$(this).parent().parent().find(".pinglun").css({display:"block"})
		$(this).parent().parent().parent().css({height:"650px"})
	},function(){
		$(".pinglun").css({display:"none"})
		$(this).parent().parent().parent().css({height:"463px"})
	})
	
	//首页鼠标滚动的时候  左侧导航固定在左侧不变
	
	$(window).scroll(function(){
		if($(this).scrollTop()>2500){
			$(".indexNavL>div").css({
				position:"relative",
				top:"2500px"
			})
		}else{
			$(".indexNavL>div").css({
				position:"fixed",
				top:"60px"
			})
		}
		
	})
  
    //登录页 鼠标滚动时  登录那块 固定
    $(window).scroll(function(){
		if($(this).scrollTop()>2600){
			$(".login").css({
				position:"fixed",
				top:"50px",
				
			})
		}else{
			$(".login").css({
				position:"static",
				top:"0px"
				
			})
		}
		
	})
     
     //登录页点击 切换二维码
    $(".sort span").click(function(){
    	var i=$(this).index();
    	$(this).addClass("border").siblings().removeClass("border")
        $(".QR").eq(i).show().siblings().hide()
    
    	
//  	if($(".sort span").eq(1)){
//  		$(this).parent().parent().find(".QRcode").show()
//  		$(this).parent().parent().find(".fromLogin").hide()
//  	}else if($(".sort span").eq(0)){
//  		$(this).parent().parent().find(".QRcode").hide()
//  		$(this).parent().parent().find(".fromLogin").show()
//  	}
    })
    $(".QRcode div img").hover(function(){
    	$(".QRhover").show();
    },function(){
    	$(".QRhover").hide();
    })

//登录页的轮播图
    var num=0;

    var lbitem=$(".lbitem").length;
    var ww=$(".lbitem").width();
    function lunbo(){
    	num++;
 
    	if(num==lbitem){
    		num=1;
    
    		$('.lbBox').stop().css({"margin-left":0+"px"});
    	}
    	$('.lbBox').stop().animate({"margin-left":-num*ww+"px"},300);
    	if(num==lbitem-1){
    		$(".dot").eq(0).addClass("dotcolor").siblings().removeClass("dotcolor")
    	}else{
    		$(".dot").eq(num).addClass("dotcolor").siblings().removeClass("dotcolor")

    	}
    }
    var timer=setInterval(lunbo,2000)
//清除计时器
   $(".lunbo").hover(function(){
   	clearInterval(timer);
   	$(".dot").click(function(){
   		var index=$(this).index();
   		$(this).addClass("dotcolor").siblings().removeClass("dotcolor")
        $('.lbBox').stop().animate({"margin-left":-index*ww+"px"},300);
   	})
   },function(){
   	timer=setInterval(lunbo,2000)
   })
   
})
