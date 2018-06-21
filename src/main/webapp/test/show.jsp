<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="jquery-easyui-1.5.4.5/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.4.5/plugins/jquery.media.js"></script>
<body>
	<div style="width: 100%; padding: 20px;">
			<div style="margin-bottom: 20px">
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
				<input id="wheelCode" class="easyui-textbox" style="width: 100px;">
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
			<a href="${pageContext.request.contextPath}/record/download.do" target="_blank" onclick="">显示PDF文档</a>
			</div>
	</div>
	<div id="container" style="width: 100%; height: 350px;"></div>
	<div style="width: 50%; height: 250px; float: left;">
		<table id="testResult" class="easyui-datagrid" title="检测结果" style="width: 100%; height: 250px;"
			data-options="rownumbers:true,singleSelect:true,collapsible:true,pagination:true">
			<thead>
				<tr>
					<th data-options="field:'id',width:40,align:'center'">序1号</th>
					<th data-options="field:'col006',width:60,align:'center'">轮对编号</th>
					<th data-options="field:'col007',width:40,align:'center'">修程</th>
					<th data-options="field:'col008',width:60,align:'center'">A侧轴承编号</th>
					<th data-options="field:'col009',width:60,align:'center'">B侧轴承编号</th>
					<th data-options="field:'col010',formatter:formatDateBoxFull,width:120,align:'center'">检测时间</th>
					<th data-options="field:'col004',width:200,align:'center',formatter: openPDFFile">PDF文件</th>
					<th data-options="field:'col005',width:200,align:'center',formatter: downloadBGMFile">PDF文件</th>
				</tr>
			</thead>
		</table>
	</div>
	<div style="width: 50%; height: 250px; float: right;">
		<table id="testResult2" class="easyui-datagrid" title="检测值记录："
			style="width: 100%; height: 250px;"
			data-options="singleSelect:true,collapsible:true,method:'get'">
			<thead>
				<tr>
					<th data-options="field:'col011',width:80,align:'center'">测点名</th>
					<th data-options="field:'col012',width:50,align:'center'">有效值</th>
					<th data-options="field:'col013',width:50,align:'center'">峰值</th>
					<th data-options="field:'col014',width:50,align:'center'">振动烈度</th>
					<th data-options="field:'col015',width:60,align:'center'">振动能量</th>
					<th data-options="field:'col016',width:60,align:'center'">峰值个数</th>
					<th data-options="field:'col017',width:60,align:'center'">纹波系数</th>
					<th data-options="field:'col018',width:60,align:'center'">评价</th>
					<th data-options="field:'col019',width:100,align:'center'">不合格项</th>
				</tr>
			</thead>
		</table>
	</div>
<!-- 
	<div id="pdfShow" class="easyui-window" title="PDF"
		data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2'"
		style=" padding: 10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'"
				style="padding: 10px;"></div>
		</div>
	</div>-->
<a id="med" class="media">H63-2304_三级_20180303094450.pdf</a>

	

	<script type="text/javascript">
		$(function() {
			

		

			

		});
		
		/* 查询数据条件 */
		function checkInputQuery(){
			var tBedName=$("#bedName").val();//这样就实现了jsp--js//隐藏域 
			var wheelCode=$('#wheelCode').textbox('getValue');
			var startDate = $('#startDate').datebox('getValue');
			var endDate = $('#endDate').datebox('getValue');
			var repairing = $('#repairing').combobox('getValue');
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
			
			 $('#testResult').datagrid('options').url='record/queryDynRecordTocalAction.do';
				$('#testResult').datagrid('load',{
					startDate:startDate,
					endDate:endDate,
					wheelCode:wheelCode,
					repairing:repairing,
					tBedName:tBedName
				});
	             
	    }
		
		/*二级联动结果列表单击事件*/
		$('#testResult').datagrid({
				//单击事件   
				onClickRow : function(rowIndex, rowData) {
					$('#testResult2').datagrid('loadData', {
						"rows" : [ {
							"col011" : rowData.col011,
							"col012" : rowData.col012,
							"col013" : rowData.col013,
							"col014" : rowData.col014,
							"col015" : rowData.col015,
							"col016" : rowData.col016,
							"col017" : rowData.col017,
							"col018" : rowData.col018,
							"col019" : rowData.col019
						}, {
							"col011" : rowData.col020,
							"col012" : rowData.col021,
							"col013" : rowData.col022,
							"col014" : rowData.col023,
							"col015" : rowData.col024,
							"col016" : rowData.col025,
							"col017" : rowData.col026,
							"col018" : rowData.col027,
							"col019" : rowData.col028
						}, {
							"col011" : rowData.col029,
							"col012" : rowData.col030,
							"col013" : rowData.col031,
							"col014" : rowData.col032,
							"col015" : rowData.col033,
							"col016" : rowData.col034,
							"col017" : rowData.col035,
							"col018" : rowData.col036,
							"col019" : rowData.col037
						}, {
							"col011" : rowData.col038,
							"col012" : rowData.col039,
							"col013" : rowData.col040,
							"col014" : rowData.col041,
							"col015" : rowData.col042,
							"col016" : rowData.col043,
							"col017" : rowData.col044,
							"col018" : rowData.col045,
							"col019" : rowData.col046
						} ]
					}
					);
				}
			});
		
		/*折线图显示结果*/
		$('#testResult').datagrid({   
			onLoadSuccess: function(data){ 
				console.log(data);
				var testingValue = $('#testingValue').combobox('getValue');
				var testingText = $('#testingValue').combobox('getText');
				var wheelCodeTxt=$('#wheelCode').textbox('getValue');
				var startDateTxt = $('#startDate').datebox('getValue');
				var endDateTxt = $('#endDate').datebox('getValue');
				var repairingTxt = $('#repairing').combobox('getValue');
				//var vardata = eval('(' + data.rows + ')');
				var json = data.rows;
				var a1yxz = [];
				var a2yxz = [];
				var b1yxz = [];
				var b2yxz = [];
				for (var i = 0, l = json.length; i < l; i++) {
					var tm=json[i]['col010'];  
					var someDate = new Date(Date.parse(formatDateBoxFull(tm)))  ;  
					var tms=Date.UTC(someDate.getFullYear(), someDate.getMonth(), someDate.getDate(), someDate.getHours(),someDate.getMinutes());  
					//var tms=formatDateBoxFull(tm);
					a1yxz.push([tms,parseFloat(json[i]['col0'+testingValue])]);
					a2yxz.push([tms,parseFloat(json[i]['col0'+(parseInt(testingValue)+9)])]);
					b1yxz.push([tms,parseFloat(json[i]['col0'+(parseInt(testingValue)+18)])]);
					b2yxz.push([tms,parseFloat(json[i]['col0'+(parseInt(testingValue)+27)])]);
				}

				Highcharts.chart('container', {
					chart : {
						type : 'spline'//曲线图
					},

					title : {
						text : '轮对'+wheelCodeTxt+repairingTxt+'修程'+testingText+'曲线分析'
					},

					subtitle : {
						text : startDateTxt+'~'+endDateTxt
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
			    
			        	 //min: min,  //最小
						//max:max,//最大 
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
			            //maxPadding : 0.05,  
						//minPadding : 0.05,  
						//tickInterval : 3600 * 1000 * 1,//两天画一个x刻度  
						                 //或者150px画一个x刻度，如果跟上面那个一起设置了，则以最大的间隔为准  
						//tickPixelInterval : 150, 
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

				});
				//===


				
			    }   
			 });
		function pdfOpen(data){
			med.href="pdf/2018/04/29/H63-2304_三级_20180303094041.pdf";
	        $('a.media').media({width:800, height:600});
		}
		//PDF文件打开
		function openPDFFile(value, row, index)
		 {
		   return "<a href='pdf/2018/04/29/" + value + "' target='_blank'>"+value+"</a>";
		 }
		//BGM文件下载
		function downloadBGMFile(value, row, index)
		 {
			
		   return "<a href='${pageContext.request.contextPath}/record/download.do?fileName=" + encodeURI(value) + "&filePath="+row.col003+"' target='_blank'>"+value+"</a>";
		 }
		
	</script>
</body>
</html>