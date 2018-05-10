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
<script type="text/javascript" src="jquery-easyui-1.5.4.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
	src="js/mydate.js"></script>
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
                overflow:hidden;
            }   
#canvas {
	position: absolute;
	left: 0px;
	top: 100px;
	width: 1980px;
	height: 1024px;
	background-color: #31334f;
	
	z-index:-1;
}
.unit{
	width:425px;
	height:92px;
	background-color:#31334f;
	padding:50px;
	margin:100px;
	border:2px solid #9899a7;
	float:left;
	}
.radius{
	position:inherit;
	width:36px;
	height:36px;
	background-color:#454668;
	text-align:center;
	display: table-cell;
  vertical-align:middle;
	font-size:10px;
	color:#fff;
	border-radius: 5px;
	margin:5px;
	float:left;
}
</style>
</head>

<body style="background:#31334f">
	<div id="banner" style="background-color:#292028;height:100px;z-index:3;color:#fff;">
		
		11111
	</div>
	<div id="canvas">
	
	<!-- <div class="unit" > -->
	<!-- 
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('open')">Open</a>
		<div class="radius" id="gbp1">GBP1:35.7</div>
		<div class="radius">GBP2:38.733448</div>
		<div class="radius">GBm1:35.74448</div>
		<div class="radius">GBm2:38.75558</div>
	</div>
	 -->
	
</div>

<div id="w" class="easyui-window" title="Basic Window" data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2'" style="width:1200px;height:600px;padding:10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center',href:'main.html'" style="padding:10px;">
			</div>
		</div>
	</div>
<script type="text/javascript">
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


$.ajax({
	url : "record/ajax.do",
	dataType : "text",
	contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
	async : false,
	success : function(data) {
		var vardata = eval('(' + data + ')');
		var json = vardata;
		//alert(parseFloat(json[0]['col7']));
		//$('#gbp1').html(parseFloat(json[0]['col7']));
		
		var unit = $ ("#canvas");
		//共显示4行设备
        $ (new Array (4)).each (function (i)
        {
        	//每行显示3台设备
            $ (new Array (3)).each (function (j)
            {
            	//设备编码
            	var code=(i * 3 + j + 1).toString().length<2?"0"+(i * 3 + j + 1):(i * 3 + j + 1);
            	//时间
            	var testTimeP=(json.length+1)>(i * 3 + j + 1)?json[(i * 3 + j)]['testTime']:new Date();
            	var testTime = (json.length+1)>(i * 3 + j + 1)?getTestTime(new Date(Date.parse(formatDateBoxFull(testTimeP)))):"-"; 
            	//修程
            	var repair=(json.length+1)>(i * 3 + j + 1)?json[(i * 3 + j)]['col2']:"-";
            	//轮对编号
            	var wheelNum=(json.length+1)>(i * 3 + j + 1)?json[(i * 3 + j)]['col1']:"-";
            	 var parentdiv=$ ("<div>RUN0"+code+" "+wheelNum+" "+testTime+" "+repair+"<br></div>").css (
     	                {
    	                    display: "inline-table",
    	                    width: "425px",
    	                    height:"92px",
    	                    textAlign: "center",
    	                    cursor: "pointer",
    	                    margin: "10px 10px 10px 10px",
    	                    backgroundImage: "url(img/divbg.png)",
    	                    border : "2px solid #31334f",
    	                    color:"#fff"
    	                });        //创建一个父div
    	               parentdiv.attr('id','parent'+(i * 3 + j + 1));//给子div设置id
    	               
    	               // 四个通道的循环
    	               $ (new Array (4)).each (function (k){
    	            	   var col="col"+(7+k*9);
    	            	   //如果数据里库的记录数少于DIV个数的逻辑处理
    	            	   var childdiv=$('<div>'+parseFloat((json.length+1)>(i * 3 + j + 1)?json[(i * 3 + j)][col]:0)+'</div>').css({
    	    	            	 display: "inline-table",
 	    	                    width: "50px",
 	    	                    height:"22px",
 	    	                    textAlign: "center",
 	    	                    cursor: "pointer",
 	    	                    margin: "0px 0px 10px 10px",
 	    	                   // border : "3px solid red" ,
 	    	                    color:"#fff"
    	    	            }); 
    	            	   childdiv.attr('id','child'+(i * 3 + j + 1)+k);
    	    	            parentdiv.append(childdiv);
    	    	           
    	               });
    	            	  
    	               unit.append(parentdiv);
                
            });
            unit.append ("<br / >");
        });
        
		var a1yxz = [];
		var a2yxz = [];
		var b1yxz = [];
		var b2yxz = [];
		for (var i = 0, l = json.length; i < l; i++) {
			a1yxz.push(parseFloat(json[i]['col7']));
			a2yxz.push(parseFloat(json[i]['col16']));
			b1yxz.push(parseFloat(json[i]['col25']));
			b2yxz.push(parseFloat(json[i]['col34']));

			// for(var key in json[i]){
			//alert(key+':'+json[i][key]);
			//}
		}

		

	}
});

//循环添加鼠标单击事件
$ (new Array (12)).each (function (ii){
	//鼠标单击事件
	$("#parent"+(ii+1)).click(function(){                  
		//清除上次选中的边框为原默认色
		$(new Array(12)).each(function(jj){
			$("#parent"+(jj+1)).css({
				border : "2px solid #31334f"
				})
		 });
		//选中边框变色
		$("#parent"+(ii+1)).css({
			border : "2px solid #9899a7"
			})
	 });
});


</script>
</body>
</html>