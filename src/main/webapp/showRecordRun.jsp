<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<script type="text/javascript" src="jquery-easyui-1.5.4.5/plugins/jquery.media.js"></script>
</head>

<body>
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
	<div style="width:98%;padding-left:1%;height:30px;padding-top:5px;">
	<input id="bedName"  name="bedName" value="${testBedNum}" style="display:none">
			<!-- 台位编号： 
				<select id="bedName"  class="easyui-combobox" name="bedName" disabled="disabled"
					style="display:none">
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
				-->
				
			    <input id="startDate" class="easyui-datetimebox" value="" style="width: 145px;">
			         ~
			    <input id="endDate" class="easyui-datetimebox" value="" style="width: 145px;">
				修程： 
				<select id="repairing" class="easyui-combobox" name="repairing" style="width: 55px;">
					<option value="新造">新造</option>
					<option value="三级" selected="selected">三级</option>
					<option value="四级">四级</option>
					<option value="五级">五级</option>
				</select> 
				轮对编号： 
				<input id="wheelCode1" class="easyui-textbox" style="width: 80px;">
				齿轮箱编号： 
				<input id="gearboxNum1" class="easyui-textbox" style="width: 80px;">
				轴承型号（G）： 
				<input id="gearboxNog1" class="easyui-textbox" style="width: 80px;">
				轴承型号（P）： 
				<input id="gearboxNop1" class="easyui-textbox" style="width: 80px;">
				检测值： 
				<select id="testingValue" class="easyui-combobox" name="testingValue"
					style="width: 80px;">
					<option value="12" selected="selected">有效值</option>
					<option value="13">峰值</option>
					<option value="14" >振动烈度</option>
					<option value="17">纹波系数</option>
				</select> 
				<a id="query" href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="checkInputQuery();">查询</a>
	</div>
	
	<div style="width:98%;padding-left:1%;height:40%;">
		<table id="testResult" class="easyui-datagrid" style="width: 100%; height:100%"
			data-options="singleSelect:true,collapsible:true,pagination:true">
			<thead>
				<tr>
					<th data-options="field:'id',width:fixWidth(0.3),align:'center'">序号</th>
					<th data-options="field:'workShop',width:fixWidth(0.5),align:'center'">车间</th>
					<th data-options="field:'placement',width:fixWidth(0.5),align:'center'">机位</th>
					<th data-options="field:'equipment',width:fixWidth(0.7),align:'center'">设备</th>
					<th data-options="field:'wheelId',width:fixWidth(0.6),align:'center'">轮对编号</th>
					<th data-options="field:'gearboxNum',width:fixWidth(0.6),align:'center'">齿轮箱编号</th>
					<th data-options="field:'repairRank',width:fixWidth(0.5),align:'center'">修程</th>
					<th data-options="field:'gearboxNog',width:fixWidth(0.6),align:'center'">轴承型号（G）</th>
					<th data-options="field:'gearboxNop',width:fixWidth(0.6),align:'center'">轴承型号（P）</th>
					<th data-options="field:'detectionTime',formatter:formatDateBoxFull,width:fixWidth(1),align:'center'">检测时间</th>
					<th data-options="field:'checker',width:fixWidth(0.5),align:'center'">检验员</th>
					<th data-options="field:'pdfFile',width:fixWidth(0.5),align:'center',formatter: openPDFFile">PDF文件</th>
					<th data-options="field:'bgmFile',width:fixWidth(0.5),align:'center',formatter: downloadBGMFile">PDF文件</th>
					<th data-options="field:'gw',width:fixWidth(0.5),align:'center',formatter:formatterGW"> GW </th>
					<th data-options="field:'gm',width:fixWidth(0.5),align:'center',formatter:formatterGM"> GM</th>
					<th data-options="field:'pw',width:fixWidth(0.5),align:'center',formatter:formatterPW"> PW </th>
					<th data-options="field:'pm',width:fixWidth(0.5),align:'center',formatter:formatterPM"> PM </th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="container" style="width:98%;padding-left:1%;height:53%"></div>

	<script type="text/javascript">
	$(function(){  
		$('#endDate').val(getDate());
		$('#startDate').val(getBeforeDate());
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
		
	});  
		/* 查询数据条件 */
		function checkInputQuery(){
			var tBedName=$("#bedName").val();//这样就实现了jsp--js//隐藏域 
			if(tBedName=="请选择"){
				alert("请选择台位编号！");
			}else{
				var wheelCode=$('#wheelCode1').textbox('getValue');
				var gearboxNum=$('#gearboxNum1').textbox('getValue');
				var gearboxNog=$('#gearboxNog1').textbox('getValue');
				var gearboxNop=$('#gearboxNop1').textbox('getValue');
				var startDate = $('#startDate').datebox('getValue');
				var endDate = $('#endDate').datebox('getValue');
				var repairing = $('#repairing').combobox('getValue');
				//var channelName=$('#testingValue').combobox('getValue');
				//alert(channelName);
				//分页实现
				var pager = $('#testResult').datagrid().datagrid('getPager'); // get the pager of datagrid
				var options=pager.data("pagination").options;
				pager.pagination({
					pageSize : 10,
					pageList : [10,20,30,40,50,60],
					beforePageText : '第',
					afterPageText : '共{pages}页',
					displayMsg : '当前显示 {from} 到 {to} ,共{total}记录'
				});
				 $('#testResult').datagrid('options').url='detectionRecord/queryRecordAction.do';
					$('#testResult').datagrid('load',{
						startDate:startDate,
						endDate:endDate,
						wheelCode:wheelCode,
						gearboxNum:gearboxNum,
						gearboxNog:gearboxNog,
						gearboxNop:gearboxNop,
						repairing:repairing,
						tBedName:tBedName
					});
			}       
	    }
		
		
		/*折线图显示结果*/
		$('#testResult').datagrid({   
			

			onLoadSuccess: function(data){ 
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
				for (var i = 0; i < json.length; i++) {
					var tm=json[i].detectionTime;  
					var someDate = new Date(Date.parse(formatDateBoxFull(tm)))  ;  
					var tms=Date.UTC(someDate.getFullYear(), someDate.getMonth(), someDate.getDate(), someDate.getHours(),someDate.getMinutes()); 
					for(var j=0;j<json[i].detailsList.length;j++){
						if(json[i].detailsList[j].channelName=='GW'){
							array_gw.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='GM'){
							array_gm.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='PW'){
							array_pw.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='PM'){
							array_pm.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
					}
					
				}
				var chart=null;
				$('#container').highcharts({
					credits: {  enabled: false},//去掉highcharts.com商标
					chart : {
						zoomType: 'x',
						type : 'spline'//曲线图
					},
					title : {
						text : repairingTxt+'修程 '+testingText+' 曲线分析',
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
						title: {
			                text: '时间',
			                style: {
			                   // color: '#4572A7'
			                }
			            },
			            type: 'datetime',
			            minTickInterval: 3600*1000,//间隔值		           
			            labels: {   
			          
			                formatter: function () { 
			                	
			                	return Highcharts.dateFormat('%m月%d日',this.value); 
			                
			                	
			                },
			                rotation:30,//倾斜30度，防止数量过多显示不全
			            },
			            tickWidth:5,//刻度的宽度  
			            lineColor : '#990000',//自定义刻度颜色  
						lineWidth :3,//自定义x轴宽度  
						gridLineWidth :1,//默认是0，即在图上没有纵轴间隔线   
						dateTimeLabelFormats:  
						{  
						    second: '%H:%M:%S',  
						    minute: '%e. %b %H:%M',  
						    hour: '%b/%e %H:%M',  
						    day: '%e日/%b',  
						    week: '%e. %b',  
						    month: '%b %y',  
						    year: '%Y'  
						 } 
					},
					legend: {
		                align: 'right',
		                x: -100,
		                verticalAlign: 'top',
		                y: 20,
		                floating: true,
		                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
		                borderColor: '#CCC',
		                borderWidth: 1,
		                shadow: false
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
						name : 'GW-'+testingText,
						data : array_gw
					},{
						name : 'GM-'+testingText,
						data : array_gm
					},{
						name : 'PW-'+testingText,
						data : array_pw
					},{
						name : 'PM-'+testingText,
						data : array_pm
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
			 });
		
		function formatterGW(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("GW")>-1){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterGM(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("GM")>-1){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterPW(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("PW")>-1){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterPM(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName.indexOf("PM")>-1){
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