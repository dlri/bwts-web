<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>检修轴承数据采集分析系统</title>
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.4.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.4.5/themes/color.css">
<script type="text/javascript" src="jquery-easyui-1.5.4.5/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.5.4.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.5.4.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/mydate.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/series-label.js"></script>
<script src="js/exporting.js"></script>
<script src="js/export-data.js"></script>
<style type="text/css">
html, body {
	padding: 0px;
	margin: 0px;
	overflow: hidden;
}
a:link{text-decoration:none; color:#e4e45f;}
a:visited{text-decoration:none; color:#6F0;}
a:hover{text-decoration:underline; color:#47b159;}
a:active{text-decoration:overline; color:#F00;}
a.web:visited{text-decoration:none; color:#12566e;}
#canvas {
	position: absolute;
	left: 0px;
	top: 100px;
	width: 1296px;
	height: 1024px;
	background-color: #31334f;
	z-index: -1;
}

.unit {
	width: 405px;
	height: 92px;
	background-color: #31334f;
	padding: 50px;
	margin: 100px;
	border: 2px solid #9899a7;
	float: left;
}

.radius {
	position: inherit;
	width: 36px;
	height: 36px;
	background-color: #454668;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
	font-size: 10px;
	color: #fff;
	border-radius: 5px;
	margin: 5px;
	float: left;
}
</style>
</head>

<body style="background: #31334f">
	<!-- 
	<div id="banner"
		style="background-color: #292028; height: 100px; z-index: 3; color: #fff;">
检修轴承数据采集分析系统
		</div>-->
	<div style="height: 62px; background: #04629b;">
		<img src="img/logo.png" alt="alt" title="title" />
	</div>
	<div id="canvas" />
	<!-- 弹出框 -->
	<div id="wc" class="easyui-window" title="Basic Window"
		data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2'"
		style="width: 1200px; height: 660px; padding: 10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding: 10px;"></div>
		</div>
	</div>
	<script type="text/javascript">
	/**
	* 校验只要是数字（包含正负整数，0以及正负浮点数）就返回true
	**/
	function isNumber(val){

	    var regPos = /^\d+(\.\d+)?$/; //非负浮点数
	    var regNeg = /^(-(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*)))$/; //负浮点数
	    if(regPos.test(val) || regNeg.test(val)){
	        return true;
	    }else{
	        return false;
	    }

	}
	
$(function(){
	var unit = $ ("#canvas");
	//共显示4行设备
    $ (new Array (11)).each (function (i)
    {
        	 var parentdiv=$ ("<div><br/>没有新的检测数据</div>").css (
 	                {
	                    width: "405px",
	                    height:"262px",
	                    textAlign: "center",
	                    cursor: "pointer",
	                    margin: "10px 10px 10px 10px",
	                    backgroundImage: "url(img/bg_pht.png)",
	                    color:"#fff",
	                    float:"left",
	                    display:"none"
	                });        //创建一个父div
	                var attr=(i  + 1).toString().length<2?"0"+(i+ 1):(i + 1);
	               parentdiv.attr('id','RUN0'+attr);//给子div设置id
	               unit.append(parentdiv);
    });	
    $ (new Array (4)).each (function (i)
    	    {
    	        	 var parentdiv=$ ("<div><br/>没有新的检测数据</div>").css (
    	 	                {
    		                    width: "628px",
    		                    height:"262px",
    		                    textAlign: "center",
    		                    cursor: "pointer",
    		                    margin: "10px 10px 10px 10px",
    		                    backgroundImage: "url(img/bg_qxj.png)",
    		                    color:"#fff",
    		                    float:"left",
    		                    //display:"none"
    		                });        //创建一个父div
    		                var attr=(i  + 1).toString().length<2?"0"+(i+ 1):(i + 1);
    		               parentdiv.attr('id','RUN0'+attr);//给子div设置id
    		               unit.append(parentdiv);
    	    });	
  //循环添加鼠标单击事件
    $ (new Array (11)).each (function (ii){
    	//鼠标单击事件
    	 var attr=(ii+1).toString().length<2?"0"+(ii+1):(ii+1);
    	$("#RUN0"+attr).click(function(){                  
    		//清除上次选中的边框为原默认色
    		$(new Array(12)).each(function(jj){
    			var attrj=(jj+1).toString().length<2?"0"+(jj+1):(jj+1);
    			$("#RUN0"+attrj).css({
    				border : "2px solid #31334f"
    				})
    		 });
    		//选中边框变色
    		$("#RUN0"+attr).css({
    			border : "2px solid #9899a7"
    			});
    		
    	 });
    });
});

var websocket = null;
//判断当前浏览器是否支持WebSocket
if ('WebSocket' in window) {
    websocket = new WebSocket('ws://'+window.location.host+'/bwts-web/websocket');
}
else {
    alert('当前浏览器 Not support websocket')
}

//连接发生错误的回调方法
websocket.onerror = function () {
};

//连接成功建立的回调方法
websocket.onopen = function () {
	//alert("dddd");
}

//接收到消息的回调方法
websocket.onmessage = function (event) {
	//alert(event.data.length);
	var json=event.data.replace(/'/g, "").split(",");
        	//设备编码
        	if(json.length<43){
        		console.log(json.length+"=+"+json[1]+"=="+json+"=="+json[0]);
        		//$("#"+json[0]).hide();
        		
        		for(var isShow=0;isShow<json.length-1;isShow++){
        			var str = json[isShow].split(":");
        			// var attr=isShow.toString().length<2?"0"+isShow:isShow;
        			 if(str[1]=="1"){
        				 $("#"+str[0]).show(); 
        				 console.log("#"+str[0]+"=="+isShow);
        			 }else{
        				 $("#"+str[0]).style.display="none"; 
        				// console.log("0#RUN0"+attr);
        			 }
        		}
        	}else{
        	var code=json[42];
        	//console.log(json.length+"=+"+json[1]+"=="+json+"=="+json[0]);
        	//时间
        	var testTime = json[4].substr(0,4)+"-"+json[4].substr(4,2)+"-"+json[4].substr(6,2)+" "+json[4].substr(8,2)+":"+json[4].substr(10,2)+":"+json[4].substr(12,2); 
        	//修程
        	var repair=json[1];
        	//轮对编号
        	var wheelNum=json[0];
        	$("#"+code).show();
        	$("#"+code).html("");
        	var div1=$('<div><div style="width:80px;float:left;padding-left:85px;"><a href="javascript:void(0)" onClick=\"windowsOpenDialogue(\''+code+'\')\" >'+code+'</a></div> <div style="width:200px;float:right;">'+testTime+'</div></div>').css({
        		// display: "inline-table",
                   width: "405px",
                   height:"25px",
                   textAlign: "center",
                   cursor: "pointer",
                   padding: "16px 0px 0px 0px",
                //   border : "1px solid red" ,
                   color:"#fff"
           }); 
        	$("#"+code).append(div1);
        	
        	var div2=$('<div><div style="width:80px;float:left;padding-left:85px;">'+wheelNum+'</div> <div style="width:160px;float:left;">'+repair+'</div></div>').css({
              	// display: "inline-table",
                      width: "405px",
                      height:"25px",
                      textAlign: "center",
                      cursor: "pointer",
                      margin: "7px 0px 0px 0px",
                    //  border : "1px solid red" ,
                      color:"#fff"
              }); 
        	$("#"+code).append(div2);
        	
        	var div21=$('<div></div>').css({
        		 display: "inline-table",
                     width: "100px",
                     height:"86px",
                     textAlign: "center",
                     cursor: "pointer",
                     margin: "0px 0px 0px 5px",
                  //   border : "1px solid red" ,
                     float:"left",
                     color:"#fff"
             }); 
       	//div2.append(div21);
       	var div211=$('<div><a href="javascript:void(0)" onClick=\"windowsOpenDialogue(\''+code+'\')\" >'+code+'</a></div>').css({
       	 display: "inline-table",
            width: "100px",
            height:"32px",
            textAlign: "center",
            cursor: "pointer",
            margin: "10px 0px 0px 0px",
         //   border : "1px solid red" ,
            float:"left",
            color:"#fff"
    }); 
	//div21.append(div211);
	var div212=$('<div>'+repair+'</div>').css({
		 display: "inline-table",
        width: "100px",
        height:"32px",
        textAlign: "center",
        cursor: "pointer",
        margin: "10px 0px 0px 0px",
      //  border : "1px solid red" ,
        float:"left",
        color:"#fff"
}); 
div21.append(div212);
       	var div22=$('<div></div>').css({
       	 display: "inline-table",
            width: "305px",
            height:"86px",
            textAlign: "center",
            cursor: "pointer",
            margin: "0px 5px 0px 0px",
        //    border : "1px solid red" ,
            float:"right",
            color:"#fff"
    }); 
//	div2.append(div22);
	               // 四个通道的循环
	             //  $ (new Array (4)).each (function (k){
	            	   //如果数据里库的记录数少于DIV个数的逻辑处理
	            	   //<div>'+json[6+0*9]+json[6+1*9]+'</div>
	            	   var val="00.00";
	            	   var v11=isNumber(json[6+4*9])?json[6+4*9]:val;
	            	   var v12=typeof( json[6+5*9])!="undefined"?json[6+5*9]:val;
	            	   var v21=typeof( json[6+5*9])!="undefined"?json[6+6*9]:val;
	            	   var v22=typeof( json[6+5*9])!="undefined"?json[6+7*9]:val;
	            	   var childdiv1=$('<div><div style="width:130px;float:left;padding-left:45px;">'+v11+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+json[6+0*9]+'</div> <div style="width:120px;float:left;padding-left:55px;">'+json[6+1*9]+'&nbsp;&nbsp;&nbsp;&nbsp;'+v12+'</div></div>').css({
	    	            	 display: "inline-table",
	    	                    width: "405px",
	    	                    height:"22px",
	    	                    textAlign: "center",
	    	                    cursor: "pointer",
	    	                    margin: "38px 0px 0px 0px",
	    	                  // border : "1px solid red" ,
	    	                  //  color:"#fff"
	    	            }); 
	            	   $("#"+code).append(childdiv1);
	            	   
	            	   var childdiv2=$('<div><div style="width:130px;float:left;padding-left:45px;">'+v21+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+json[6+2*9]+'</div> <div style="width:120px;float:left;padding-left:55px;">'+json[6+3*9]+'&nbsp;&nbsp;&nbsp;&nbsp;'+v22+'</div></div>').css({
	    	            	 display: "inline-table",
	    	                    width: "405px",
	    	                    height:"22px",
	    	                    textAlign: "center",
	    	                    cursor: "pointer",
	    	                    margin: "19px 0px 0px 0px",
	    	                   //border : "1px solid red" ,
	    	                   // color:"#fff"
	    	            }); 
	            	   $("#"+code).append(childdiv2);
	    	           
	             //  });
        	}
}

//连接关闭的回调方法
websocket.onclose = function () {
}

//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
window.onbeforeunload = function () {
    closeWebSocket();
}

//关闭WebSocket连接
function closeWebSocket() {
    websocket.close();
}

//发送消息
function send() {
    var message = document.getElementById('text').value;
    websocket.send(message);
}

//Begin画布移动操作开始
var canvas = document.getElementById("canvas");
var dragFlag = false;
var x,y;
canvas.onmousedown = function (e) {
	e = e || window.event;
	x = e.clientX - canvas.offsetLeft;
	y = e.clientY - canvas.offsetTop;
	dragFlag = true;
};
document.onmousemove = function (e) {
	if (dragFlag) {
		e = e || window.event;
		canvas.style.left = e.clientX - x + "px";
		canvas.style.top  = e.clientY - y + "px";
	}
};
document.onmouseup = function (e) {
	dragFlag = false;
};
//End画布移动操作开始

 //获取当前时间 格式：yyyy-MM-dd HH:MM:SS
function getTestTime(date) {
    var month = zeroFill(date.getMonth() + 1);//月
    var day = zeroFill(date.getDate());//日
    var hour = zeroFill(date.getHours());//时
    var minute = zeroFill(date.getMinutes());//分
    var second = zeroFill(date.getSeconds());//秒   
    //当前时间
    var curTime = date.getFullYear() + "-" + month + "-" + day
            + " " + hour + ":" + minute + ":" + second;   
    return curTime;
}
/**
 * 补零
 */
function zeroFill(i){
    if (i >= 0 && i <= 9) {
        return "0" + i;
    } else {
        return i;
    }
}

function windowsOpenDialogue(data){
	$('#wc').window({
	    title: data,
	    href: 'record/show.do?testBedNum='+data,
	});
	$('#wc').window('open');
}
</script>
</body>
</html>