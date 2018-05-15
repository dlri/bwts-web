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
<script type="text/javascript" src="js/pdf.js"></script>
<script type="text/javascript" src="js/pdf.worker.js"></script>
<script type="text/javascript">
	var url = 'helloworld.pdf';

	function showPdf() {

		//PDFJS.workerSrc = '../build/pdf.worker.js';//加载核心库
		PDFJS.getDocument(url).then(function getPdfHelloWorld(pdf) {
			//
			// 获取第一页数据
			//
			pdf.getPage(1).then(function getPageHelloWorld(page) {
				var scale = 1.5;
				var viewport = page.getViewport(scale);

				//
				// Prepare canvas using PDF page dimensions
				//
				var canvas = document.getElementById('the-canvas');
				var context = canvas.getContext('2d');
				canvas.height = viewport.height;
				canvas.width = viewport.width;

				//
				// Render PDF page into canvas context
				//
				var renderContext = {
					canvasContext : context,
					viewport : viewport
				};
				page.render(renderContext);
			});
		});

	}
</script>
<style type="text/css">
html, body {
	padding: 0px;
	margin: 0px;
	overflow: hidden;
}

#canvas {
	position: absolute;
	left: 0px;
	top: 100px;
	width: 1980px;
	height: 1024px;
	background-color: #31334f;
	z-index: -1;
}

.unit {
	width: 425px;
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
	<div id="banner"
		style="background-color: #292028; height: 100px; z-index: 3; color: #fff;">
检修轴承数据采集分析系统
		</div>
	<div id="canvas" />
	<!-- 弹出框 -->
	<div id="w" class="easyui-window" title="Basic Window"
		data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2'"
		style="width: 1200px; height: 600px; padding: 10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center',href:'main.html'"
				style="padding: 10px;"></div>
		</div>
	</div>
	<script type="text/javascript">
$(function(){
	var unit = $ ("#canvas");
	//共显示4行设备
    $ (new Array (4)).each (function (i)
    {
    	//每行显示3台设备
        $ (new Array (3)).each (function (j)
        {
        	
        	 var parentdiv=$ ("<div><br/>没有新的检测数据</div>").css (
 	                {
	                    display: "inline-table",
	                    width: "425px",
	                    height:"123px",
	                    textAlign: "center",
	                    cursor: "pointer",
	                    margin: "10px 10px 10px 10px",
	                    backgroundImage: "url(img/divbg.png)",
	                    //border : "2px solid #31334f",
	                    border : "2px solid #31334f",
	                    color:"#fff"
	                });        //创建一个父div
	                var attr=(i * 3 + j + 1).toString().length<2?"0"+(i * 3 + j + 1):(i * 3 + j + 1);
	               parentdiv.attr('id','RUN0'+attr);//给子div设置id
	               unit.append(parentdiv);
        });
        unit.append ("<br / >");
    });
	
  //循环添加鼠标单击事件
    $ (new Array (12)).each (function (ii){
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
}

//接收到消息的回调方法
websocket.onmessage = function (event) {
	var json=event.data.replace(/'/g, "").split(",");
        	//设备编码
        	var code=json[42];
        	//时间
        	var testTime = json[4].substr(0,4)+"-"+json[4].substr(4,2)+"-"+json[4].substr(6,2)+" "+json[4].substr(8,2)+":"+json[4].substr(10,2)+":"+json[4].substr(12,2); 
        	//修程
        	var repair=json[1];
        	//轮对编号
        	var wheelNum=json[0];
        	$("#"+code).html("");
        	var div1=$('<div><br/>'+wheelNum+"  "+testTime+'</div>').css({
        		 display: "inline-table",
                   width: "425px",
                   height:"25px",
                   textAlign: "center",
                   cursor: "pointer",
                   padding: "0px 0px 0px 0px",
                //   border : "1px solid red" ,
                   color:"#fff"
           }); 
        	$("#"+code).append(div1);
        	var div2=$('<div></div>').css({
              	 display: "inline-table",
                      width: "425px",
                      height:"78px",
                      textAlign: "center",
                      cursor: "pointer",
                      margin: "0px 0px 0px 0px",
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
       	div2.append(div21);
       	var div211=$('<div><a href="javascript:void(0)" onClick="windowsOpenDialogue(event)" >'+code+'</a></div>').css({
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
	div21.append(div211);
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
	div2.append(div22);
	               // 四个通道的循环
	               $ (new Array (4)).each (function (k){
	            	   //如果数据里库的记录数少于DIV个数的逻辑处理
	            	   var childdiv=$('<div>'+json[6+k*9]+'</div>').css({
	    	            	 display: "inline-table",
	    	                    width: "60px",
	    	                    height:"22px",
	    	                    textAlign: "center",
	    	                    cursor: "pointer",
	    	                    margin: "10px 55px 10px 30px",
	    	        //            border : "3px solid red" ,
	    	                    color:"#fff"
	    	            }); 
	            	   div22.append(childdiv);
	    	           
	               });
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

function windowsOpenDialogue(e){
	//alert(e.target);
	$('#w').window('open');
}
</script>
</body>
</html>