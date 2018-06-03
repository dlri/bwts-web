<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<body>
	<div style="width: 100%; height: 30px;padding: 5px;">
			<div style="margin-bottom: 0px">
			<input type="hidden" name="bedName" id="bedName" value="${testBedNum}"> 
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
	</div>
	
	<div style="width: 100%; height: 320px;">
		<table id="testResult" class="easyui-datagrid" style="width: 100%; height: 320px;"
			data-options="rownumbers:true,singleSelect:true,collapsible:true,pagination:true">
			<thead>
				<tr>
					<th data-options="field:'id',width:40,align:'center'">序号</th>
					<th data-options="field:'tBedNum',width:70,align:'center'">试验台编号</th>
					<th data-options="field:'wheelId',width:70,align:'center'">轮对编号</th>
					<th data-options="field:'repairRank',width:40,align:'center'">修程</th>
					<th data-options="field:'aBearingNum',width:75,align:'center'">A侧轴承编号</th>
					<th data-options="field:'bBearingNum',width:75,align:'center'">B侧轴承编号</th>
					<th data-options="field:'detectionTime',formatter:formatDateBoxFull,width:130,align:'center'">检测时间</th>
					<th data-options="field:'pdfFile',width:60,align:'center',formatter: openPDFFile">PDF文件</th>
					<th data-options="field:'bgmFile',width:60,align:'center',formatter: downloadBGMFile">PDF文件</th>
					<th data-options="field:'al',width:60,align:'center',formatter:formatterA1"> IN0:A1 </th>
					<th data-options="field:'a2',width:60,align:'center',formatter:formatterA2"> IN0:A2 </th>
					<th data-options="field:'bl',width:60,align:'center',formatter:formatterB1"> IN0:B1 </th>
					<th data-options="field:'b2',width:60,align:'center',formatter:formatterB2"> IN0:B2 </th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="container" style="width: 100%; height: 300px;"></div>

	<script type="text/javascript">
		/* 查询数据条件 */
		function checkInputQuery(){
			var tBedName=$("#bedName").val();//这样就实现了jsp--js//隐藏域 
			var wheelCode=$('#wheelCode1').textbox('getValue');
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
				pageList : [ 10, 20, 30, 40, 50,60 ],
				beforePageText : '第',
				afterPageText : '共{pages}页',
				displayMsg : '当前显示 {from} 到 {to} ,共{total}记录'
			});
			 $('#testResult').datagrid('options').url='detectionRecord/queryRecordAction.do';
				$('#testResult').datagrid('load',{
					startDate:startDate,
					endDate:endDate,
					wheelCode:wheelCode,
					repairing:repairing,
					tBedName:tBedName
				});
	             
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
				var a1yxz = [];
				var a2yxz = [];
				var b1yxz = [];
				var b2yxz = [];
				for (var i = 0; i < json.length; i++) {
					var tm=json[i].detectionTime;  
					var someDate = new Date(Date.parse(formatDateBoxFull(tm)))  ;  
					var tms=Date.UTC(someDate.getFullYear(), someDate.getMonth(), someDate.getDate(), someDate.getHours(),someDate.getMinutes()); 
					for(var j=0;j<json[i].detailsList.length;j++){
						if(json[i].detailsList[j].channelName=='IN0:A1'){
							a1yxz.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='IN0:A2'){
							a2yxz.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='IN1:B1'){
							b1yxz.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
						if(json[i].detailsList[j].channelName=='IN1:B2'){
							b2yxz.push([tms,parseFloat(shiftValue(json[i].detailsList[j]))]);
						}
					}
					
				}
				var chart=null;
				$('#container').highcharts({
					credits: {  enabled: false},//去掉highcharts.com商标
					chart : {
						type : 'spline'//曲线图
					},
					title : {
						text : repairingTxt+'修程 '+testingText+' 曲线分析',
						style:{
							fontSize : '12px',
							color:'#4572A7'
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
			        			color:'#4572A7'
			        		},
			        	},	
						title : {
							text : '检测值:'+testingText,
							style:{
			        			color:'#4572A7'
			        		}
						}
					
					},
					xAxis : {
						title: {
			                text: '时间',
			                style: {
			                    color: '#4572A7'
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
						name : 'IN0-A1'+testingText,
						data : a1yxz
					}, {
						name : 'IN0-A2'+testingText,
						data : a2yxz
					}, {
						name : 'IN0-B1'+testingText,
						data : b1yxz
					}, {
						name : 'IN0-B2'+testingText,
						data : b2yxz
					}

					],
					tooltip: {
			            xDateFormat: '%Y-%m-%d %H:%M:%S',
			            shared: true
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
							color:'#4572A7'
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
		
		function formatterA1(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName=='IN0:A1'){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterA2(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName=='IN0:A2'){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterB1(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName=='IN1:B1'){
					str=shiftValue(row.detailsList[d]);
				}
			}
		   return str;
		 }
		function formatterB2(value, row, index)
		 {
			
			var str="";
			for(var d=0;d<row.detailsList.length;d++){
				if(row.detailsList[d].channelName=='IN1:B2'){
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
		   return "<a href='pdf/"+row.savePath+"/"+value + "' target='_blank'>查看</a>";
		 }
		//BGM文件下载
		function downloadBGMFile(value, row, index)
		 {
			
		   return "<a href='${pageContext.request.contextPath}/record/download.do?fileName=" + encodeURI(value) + "&filePath="+row.savePath+"' target='_blank'>下载</a>";
		 }
		
	</script>
</body>
</html>