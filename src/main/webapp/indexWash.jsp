<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>检修轴承数据采集分析系统</title>

<style type="text/css">
#canvas {
	position: absolute;
	left: 0px;
	top: 2px;
	width: 1978px;
	height: 1004px;
	background-color: #31334f;
	z-index: -1;
	background:#000000 url(img/bg_wash.png) no-repeat;
}
</style>
</head>

<body>
	<%@include file="head.html" %>
	<div id="canvas" />
	<!-- 弹出框 -->
	<div id="wc" class="easyui-window" title="详情" data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2',left:'20px',top:'74px'"/>
	<script type="text/javascript">
		/**
		 * 校验只要是数字（包含正负整数，0以及正负浮点数）就返回true
		 **/
		function isNumber(val) {

			var regPos = /^\d+(\.\d+)?$/; //非负浮点数
			var regNeg = /^(-(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*)))$/; //负浮点数
			if (regPos.test(val) || regNeg.test(val)) {
				return true;
			} else {
				return false;
			}

		}

		$(function() {
			var unit = $("#canvas");
			//添加8台清洗机设备，默认不显示
			$(new Array(4)).each(
					function(i) {
						var parentdiv = $("<div><br/><br/><br/></div>").css({
							width : "470px",
							height : "265px",
							textAlign : "center",
							cursor : "pointer",
							margin : "120px 20px 12px 0px",
							//backgroundImage : "url(img/unit_wash_hg.png)",
							color : "#fff",
							float : "left",
							//display:"none"
						}); //创建一个父div
						var attr = (i + 1).toString().length < 2 ? "0"
								+ (i + 1) : (i + 1);
						parentdiv.attr('id', 'WASH0' + attr);//给子div设置id
						unit.append(parentdiv);
					});
			
			//循环添加鼠标单击事件
			$(new Array(4)).each(function(ii) {
				//鼠标单击事件
				var attr = (ii + 1).toString().length < 2 ? "0"+ (ii + 1) : (ii + 1);
				$("#WASH0" + attr).click(function() {
					//清除上次选中的边框为原默认色
					$(new Array(4)).each(function(jj){
					var attrj = (jj + 1).toString().length < 2 ? "0"+ (jj + 1): (jj + 1);
					$("#WASH0"+ attrj).css({border : "1px solid #31334f"})});
					//选中边框变色
					$("#WASH0" + attr).css({border : "1px solid #9899a7"});
				});
			});
			
			//加载最近检测数据
			$.ajax({
				url : 'detectionRecord/queryLastTimeRecordAction.do',
				type : 'post',
				async : true,//异步方式
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						var str = "'wash','" + data[i].tBedNum + "','"
								+ data[i].channelNum + "','" + data[i].wheelId
								+ "','" + data[i].repairRank + "','"
								+ data[i].aBearingNum + "','"
								+ data[i].bBearingNum + "','"
								+ data[i].detectionTime;
                        //加载详细通道值
						for (var j = 0; j < data[i].detailsList.length; j++) {
							var detail = data[i].detailsList[j];
							str += "','" + detail.channelName + "','"
									+ detail.validValue + "','"
									+ detail.peakValue + "','"
									+ detail.vibrationSeverity;
							str += "','" + detail.vibrationEnergy + "','"
									+ detail.peakNum + "','"
									+ detail.rippleFactor + "','"
									+ detail.evaluation + "','"
									+ detail.nonQualified;
						}
						var jsonStr = str.replace(/'/g, "").split(",");
						showData(jsonStr);
					}
				},
				fail : function() {
					alert("数据加载失败，请检查数据库网络！");
				}
			});
		});
		
		

		var websocket = null;
		//判断当前浏览器是否支持WebSocket
		if ('WebSocket' in window) {
			websocket = new WebSocket('ws://' + window.location.host
					+ '/bwts-web/websocket');
		} else {
			alert('当前浏览器 Not support websocket')
		}

		//连接发生错误的回调方法
		websocket.onerror = function() {
		};

		//连接成功建立的回调方法
		websocket.onopen = function() {
			//alert("dddd");
		}

		//接收到消息的回调方法
		websocket.onmessage = function(event) {
			 ///*
			//alert(event.data.length);
			var json = event.data.replace(/'/g, "").split(",");
			console.log(json);
			//设备在线状态监测
			if (json.length < 42) {
				console.log(json.length + "=+" + json[1] + "==" + json + "=="+ json[0]);
				for (var isShow = 0; isShow < json.length - 1; isShow++) {
					var str = json[isShow].split(":");
					// var attr=isShow.toString().length<2?"0"+isShow:isShow;
					if (str[1] == "1") {
						//$("#" + str[0]).show();
						console.log("#" + str[0] + "==" + isShow);
					} else {
						//$("#" + str[0]).style.display = "none";
						// console.log("0#RUN0"+attr);
					}
				}
			} else {
				showData(json);
			}
		//	*/
		}

		//连接关闭的回调方法
		websocket.onclose = function() {
		}

		//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
		window.onbeforeunload = function() {
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
		var x, y;
		canvas.onmousedown = function(e) {
			e = e || window.event;
			x = e.clientX - canvas.offsetLeft;
			y = e.clientY - canvas.offsetTop;
			dragFlag = true;
		};
		document.onmousemove = function(e) {
			if (dragFlag) {
				e = e || window.event;
				canvas.style.left = e.clientX - x + "px";
				canvas.style.top = e.clientY - y + "px";
			}
		};
		document.onmouseup = function(e) {
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
			var curTime = date.getFullYear() + "-" + month + "-" + day + " "
					+ hour + ":" + minute + ":" + second;
			return curTime;
		}
		/**
		 * 补零
		 */
		function zeroFill(i) {
			if (i >= 0 && i <= 9) {
				return "0" + i;
			} else {
				return i;
			}
		}

		function windowsOpenDialogue(data) {
			$('#wc').window({
				title : data,
				href : 'record/show.do?testBedNum=' + data,
			    width:$(window).width()-40,
			    height:$(window).height()-86
			});
			$('#wc').window('open');
		}
		
		// 动态数据显示
		function showData(json) {
			console.log("实时数据长度："+json.length+"   设备类型："+json[0]+"   试验台编号："+json[1]);
			
			console.log(isPass);
			//试验台类型
			var detectionType=json[0];
			//试验台编号
			var detectionCode = json[1];
			//检测数据条数
			var dataLength=json[2];
			//检测时间
			var testTime = json[7].substr(0, 4) + "-"
					+ json[7].substr(4, 2) + "-" + json[7].substr(6, 2)
					+ " " + json[7].substr(8, 2) + ":"
					+ json[7].substr(10, 2) + ":" + json[7].substr(12, 2);
			//轮对编号
			var wheelNum = json[3];
			//修程级别
			var repair = json[4];
			//$("#" + detectionCode).show();
			//alert(detectionCode);
			var length=json.length/9;
			var isPass=1;
			for(var v=0;v<length-1;v++){
				if(json[15+v*9]=="不合格"){
					isPass=0;
					break;
				}
			}
			if(isPass==1){
				$("#" + detectionCode).css({backgroundImage : "url(img/unit_wash_hg.png)"});
			}else{
				$("#" + detectionCode).css({backgroundImage : "url(img/unit_wash_bhg.png)"});
			}
			$("#" + detectionCode).html("");
			//第一行
			var div1 = $(
					'<div><div style="width:200px;padding-left:270px;"><a href="javascript:void(0)" onClick=\"windowsOpenDialogue(\''
							+ detectionCode
							+ '\')\" >'
							+ detectionCode
							+ '</a></div> <div style="padding-top:24px;padding-left:275px;width:165px;">'
							+ testTime + '</div><div style="padding-top:4px;padding-left:260px;width:200px;">'
							+ repair + '</div><div style="padding-top:4px;padding-left:275px;width:200px;">'
							+ wheelNum + '</div><div style="padding-top:21px;padding-left:270px;width:200px;">'
							+ json[9 + 3 * 9] +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+ json[9 + 3 * 9]+ '</div><div style="padding-top:3px;padding-left:270px;width:200px;">'
							+ json[9 + 2 * 9] +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+ json[9 + 3 * 9] + '</div><div style="padding-top:3px;padding-left:270px;width:200px;">'
							+ json[9 + 1 * 9] +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+ json[9 + 3 * 9] + '</div><div style="padding-top:3px;padding-left:270px;width:200px;">'
							+ json[9 + 0 * 9] +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+ json[9 + 3 * 9] + '</div></div>').css({
				width : "380px",
				height : "30px",
				cursor : "pointer",
				padding : "20px 0px 0px 0px",
				color : "#fff"
			});
			$("#" + detectionCode).append(div1);
			
			//V方向的检测值初始化
			var val = "00.00";
			var v11,v12,v21,v22;
			//if(detectionType=="run"){
			//	console.log("为跑合台");
				v11 = isNumber(json[9 + 4 * 9]) ? json[9 + 4 * 9] : val;
				v12 = typeof (json[9 + 5 * 9]) != "undefined" ? json[9 + 5 * 9] : val;
				v21 = typeof (json[9 + 6 * 9]) != "undefined" ? json[9 + 6 * 9] : val;
				v22 = typeof (json[9 + 7 * 9]) != "undefined" ? json[9 + 7 * 9] : val;
			//}else if(detectionType=="wash"){
			//	console.log("为清洗机");
			//	v11=val;
			//	v12=val;
			//	v21=val;
			//	v22=val;
			//}else{
			//}
		}
	</script>
</body>
</html>