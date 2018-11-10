<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
</head>

<body style="background:#ffffff;width:100%;height:700px;">
<%
        Cookie[] cookies = request.getCookies();    
        String loginCookie ="";  
        if(cookies !=null){
            for(int i = 0;i < cookies.length;i++){ 
                if(cookies[i].getName().equals("login_user_id")){
                	loginCookie=cookies[i].getValue();
                }
            }
        }
        if("".equals(loginCookie)){
        	  response.sendRedirect("login.jsp"); 
        }else{
%> 
	<%@include file="head.html"%>
	<div style="width:98%;padding-left:1%;height:30px;padding-top:5px;font-size:10px;">
			台位编号： 
				<select id="bedName"  class="easyui-combobox" name="bedName"
					style="width: 100px;">
					<option value="${testBedNum}" selected="selected">${testBedNum}</option>
					<option value="RUN002">RUN002</option>
					<option value="RUN003">RUN003</option>
					<option value="RUN004" >RUN004</option>
					<option value="RUN005">RUN005</option>
					<option value="RUN015">RUN015</option>
					<option value="RUN016">RUN016</option>
					<option value="RUN017">RUN017</option>
					<option value="RUN018">RUN018</option>
					<option value="RUN019">RUN019</option>
					<option value="RUN020">RUN020</option>
					<option value="WASH001">WASH001</option>
					<option value="WASH002">WASH002</option>
					<option value="WASH003">WASH003</option>
					<option value="WASH004">WASH004</option>
				</select> 
				开始时间：
			    <input id="startDate" class="easyui-datetimebox" value="" style="width: 150px;">
			          结束时间：
			    <input id="endDate" class="easyui-datetimebox" value="" style="width: 150px;">
				修程： 
				<select id="repairing" class="easyui-combobox" name="repairing" style="width: 100px;">
					<option value="一级">一级</option>
					<option value="二级">二级</option>
					<option value="三级" selected="selected">三级</option>
					<option value="四级">四级</option>
					<option value="五级">五级</option>
				</select> 
				轮对编号： 
				<input id="wheelCode1" class="easyui-textbox" style="width: 100px;">
				检测值： 
				<select id="testingValue" class="easyui-combobox" name="testingValue"
					style="width: 100px;">
					<option value="12" selected="selected">有效值</option>
					<option value="13">峰值</option>
					<option value="14" >振动烈度</option>
					<option value="15">振动能量</option>
					<option value="16">峰值个数</option>
					<option value="17">纹波系数</option>
				</select> 
				<a id="query" href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="checkInputQuery();">查询</a>
	</div>
	
	<div id="container" style="width:98%;padding-left:1%;height:70%;background-color: #31334f;"></div>
	<div id="wc" class="easyui-window" title="详情"
		data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2',left:'20px',top:'74px'" />

	<script type="text/javascript">
	$(function(){  
		$('#startDate').datetimebox(
				{
					onSelect : function(date) {
						var time = $('#startDate').datetimebox('spinner')
								.spinner('getValue');
						$('#startDate').datetimebox(
								'setValue',
								date.getFullYear() + '-'
										+ (date.getMonth() + 1) + '-'
										+ date.getDate() + ' ' + time);
						$('#startDate').datetimebox('hidePanel');
					}
		});
		
		$('#endDate').datetimebox(
				{
					onSelect : function(date) {
						var time = $('#endDate').datetimebox('spinner')
								.spinner('getValue');
						$('#endDate').datetimebox(
								'setValue',
								date.getFullYear() + '-'
										+ (date.getMonth() + 1) + '-'
										+ date.getDate() + ' ' + time);
						$('#endDate').datetimebox('hidePanel');
					}
		});
		$('#endDate').datetimebox('setValue', getDate());
		$('#startDate').datetimebox('setValue',getBeforeDate());
		
	
	});  
		/* 查询数据条件 */
		function checkInputQuery(){
			var tBedName=$("#bedName").val();//这样就实现了jsp--js//隐藏域 
			if(tBedName=="请选择"){
				alert("请选择台位编号！");
			}else{
				var wheelCode=$('#wheelCode1').textbox('getValue');
				var startDate = $('#startDate').datebox('getValue');
				var endDate = $('#endDate').datebox('getValue');
				var repairing = $('#repairing').combobox('getValue');
				
				$.ajax({
					url : 'detectionRecord/trendingAction.do',
					type : 'post',
					data :{
						startDate:startDate,
						endDate:endDate,
						wheelCode:wheelCode,
						repairing:repairing,
						tBedName:tBedName,
						rows:10,
						page:1
					},
					async : true,//异步方式
					success : function(data) {
						result(data);
					},
					fail : function() {
						alert("数据加载失败，请检查数据库网络！");
					}
				});
			}       
	    }
		

		
		/*折线图显示结果*/
			function result(data){ 
				console.log(data);
				var testingValue = $('#testingValue').combobox('getValue');
				var testingText = $('#testingValue').combobox('getText');
				var wheelCodeTxt=$('#wheelCode1').textbox('getValue');
				var startDateTxt = $('#startDate').datebox('getValue');
				var endDateTxt = $('#endDate').datebox('getValue');
				var repairingTxt = $('#repairing').combobox('getValue');
				var json = data.rows;
				//alert(json[0].wheelId+"======"+json[0].detailsList[0].channelName);
				var array_gw = [];
				var array_gm = [];
				var array_pw = [];
				var array_pm = [];
				var array_a1 = [];
				var array_a2 = new Array(1,2,3,4,5,6,7,8,9,10);
				var array_b1 = [];
				var array_b2 = [];
				array_a1=json[0];
				array_a2=json[1];
				
				//for (var i = 0; i < json.length; i++) {
					//console.log(json[i]);
					//var tm=json[i].detectionTime;  
					//var someDate = new Date(Date.parse(formatDateBoxFull(tm)))  ;  
					//var tms=Date.UTC(someDate.getFullYear(), someDate.getMonth(), someDate.getDate(), someDate.getHours(),someDate.getMinutes()); 
					//for(var j=0;j<json[i].detailsList.length;j++){
					
						//if(json[i].detailsList[j].channelName=='IN0:A1'){
						//	array_a1.push([parseFloat(shiftValue(json[i].detailsList[j]))]);
						//}
						//if(json[i].detailsList[j].channelName=='IN0:A2'){
						//	array_a2.push([tms,parseFloat(shiftValue)]);
						//}
						
						
					//}
					
					
				//}
				var chart=null;
				$('#container').highcharts({
					credits: {  enabled: false},//去掉highcharts.com商标
					chart : {
						zoomType: 'x',
						type : 'spline'//曲线图
					},
					title : {
						text : ' RUN002台位合格率趋势预测分析',
						style:{
							fontSize : '12px',
							//color:'#4572A7'
		        		}
					},
					yAxis : {
						gridLineWidth:1,
			        	minorGridLineWidth:1,
			        	labels:{
			        		formatter:function(){
			        			return this.value;	        				        		
			        		},
			        		style:{
			        			//color:'#4572A7'
			        		},
			        	},	
						title : {
							text : '检测值:'+testingText,
							style:{
			        			//color:'#4572A7'
			        		}
						}
					
					},
					xAxis : {
						categories: ['18年1月', '18年2月', '18年3月', '18年4月','18年5月',
						             '18年6月','18年7月','18年8月','18年9月','18年10月',
						             '18年11月','18年12月','19年1月','19年2月','19年3月','19年4月']
					},
					legend : {
						layout : 'vertical',
						align : 'right',
						verticalAlign : 'middle'
					},

					plotOptions : {

						series : {
							label : {
								connectorAllowed : false
							},
							pointStart : 1
						}
					},

					series : [ {
						name : '实际值',
						data : array_a1
					}, {
						name : '预测值',
						data : array_a2
					}

					],
					tooltip: {
						crosshairs:[{
							width:3,
							color:'green',
							dashStyle:'shortdot'
						},{
							width:3,
							color:'red'
						}],
			            xDateFormat: '%Y-%m-%d %H:%M:%S',
			            shared: true,
			            positioner: function () { // 固定提示框
			                 return { x: 68, y: 10 };
			             },
			             valueSuffix: ' cm', // 数值后缀

			             valuePrefix : '', //数值前缀

			             valueDecimals:2 // 保留小数位数
			        },

					responsive : {
						rules : [ {
							condition : {
								maxWidth : 500
							},
							chartOptions : {
								legend : {
									layout : 'horizontal',
									align : 'center',
									verticalAlign : 'bottom'
								}
							}
						} ]
					}

				},function(c){
					chart=c; //回调函数，传递图表对象	
					
					var title = {
						text : '轮对编号为'+wheelCodeTxt+'的'+repairingTxt+'修程'+testingText+'曲线分析',
						style:{
							fontSize : '12px',
							//color:'#4572A7'
		        		}
					}
					var endTime=formatDateBoxFull(new Date());
					var subtitle ={
						text : startDateTxt+'~'+endDateTxt
					};
					var subtitle1 ={
							text : startDateTxt+'~'+endTime
						};
					if(wheelCodeTxt!=""){
						chart.setTitle(title);
					}
					if(startDateTxt!=""){
						if(endDateTxt==""){
							//alert()+"ddddd"+chart.title.textStr);
							chart.setTitle(null,subtitle1);
						}else{
							chart.setTitle(null,subtitle);
						}
					}
				});
				
				//===
			    }   
		
		function formatterGW(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("GW")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterGM(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("GM")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterPW(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("PW")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterPM(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("PM")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		
		function formatterA1(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("A1")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterA2(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("A2")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterB1(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("B1")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterB2(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("B2")>0){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		
		//改变显示的检测值类别
		function shiftValue(row){
			var testingValue=$('#testingValue').combobox('getValue');
			testingValue=parseInt(testingValue);
			var str="";
			
			switch(testingValue){
			case 12:
				str=row.validValue;
				break;
			case 13:
				str=row.peakValue;
				break;
			case 14:
				str=row.vibrationSeverity;
				break;
			case 15:
				str=row.vibrationEnergy;
				break;
			case 16:
				str=row.peakNum;
				break;
			case 17:
				str=row.rippleFactor;
				break;
			}
			return str;
		}
		
		//PDF文件打开
		function openPDFFile(value, row, index)
		 {
		   return "<a href='pdf/"+row.savePath+"/"+value + "' target='_blank'><font color='#212830'>查看</font></a>";
		 }
		//BGM文件下载
		function downloadBGMFile(value, row, index)
		 {
			
		   return "<a href='${pageContext.request.contextPath}/record/download.do?fileName=" + encodeURI(value) + "&filePath="+row.savePath+"' target='_blank'><font color='#212830'>下载</font></a>";
		 }
		
		function getBeforeDate(){
			var today = new Date(new Date()-24*60*60*1000*3); 
			var date; 
			date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate() + " " + today.getHours()+":"+today.getMinutes()+":"+today.getSeconds(); 
			return date;
		}
		function getDate(){
			var today = new Date(); 
			var date; 
			date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate() + " " + today.getHours()+":"+today.getMinutes()+":"+today.getSeconds(); 
			return date;
		}
		function fixWidth(percent)
		{
		    return document.body.clientWidth * percent/10; //这里你可以自己做调整
		}

	</script>
<%} %>
</body>
</html>