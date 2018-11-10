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
	<div style="width:98%;padding-left:1%;height:70px;padding-top:5px;font-size:10px;">
	                    车间： 
				<select id="workShop"  class="easyui-combobox" name="workShop"
					style="width: 65px;">
					<option value="请选择" selected="selected">请选择</option>
					<option value="B01">B01</option>
					<option value="B02">B02</option>
					<option value="B03" >B03</option>
					<option value="B04">B04</option>
				</select> 
			机位： 
				<select id="placement"  class="easyui-combobox" name="placement"
					style="width: 65px;">
					<option value="请选择" selected="selected">请选择</option>
					<option value="R01">R01</option>
					<option value="R02">R02</option>
					<option value="R03">R03</option>
					<option value="R04">R04</option>
					<option value="R05">R05</option>
					<option value="R06">R06</option>
					<option value="R07">R07</option>
					<option value="R08">R08</option>
					<option value="R09">R09</option>
					<option value="R10">R10</option>
				</select> 
				  设备： 
				<select id="equipment"  class="easyui-combobox" name="equipment"
					style="width: 100px;">
					<option value="请选择" selected="selected">请选择</option>
					<option value="齿轮箱跑合台">齿轮箱跑合台</option>
					<option value="齿轮箱清洗机">齿轮箱清洗机</option>
				</select> 
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
				<p>
				齿轮箱轴承型号（G）： 
				<input id="gearboxNog1" class="easyui-textbox" style="width: 120px;">
				齿轮箱轴承型号（P）： 
				<input id="gearboxNop1" class="easyui-textbox" style="width: 120px;">
				轴箱轴承型号： 
				<input id="bearingNo1" class="easyui-textbox" style="width: 120px;">
				
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
				var workShop = $('#workShop').combobox('getValue');
				var placement = $('#placement').combobox('getValue');
				var equipment = $('#equipment').combobox('getValue');
				var wheelCode=$('#wheelCode1').textbox('getValue');
				var gearboxNum=$('#gearboxNum1').textbox('getValue');
				var gearboxNog=$('#gearboxNog1').textbox('getValue');
				var gearboxNop=$('#gearboxNop1').textbox('getValue');
				var bearingNo=$('#bearingNo1').textbox('getValue');
				var startDate = $('#startDate').datebox('getValue');
				var endDate = $('#endDate').datebox('getValue');
				var repairing = $('#repairing').combobox('getValue');
				var array_xAxis=[];
				var array_data = [];
				var array_data_n=[];
				$.ajax({
					url : 'detectionRecord/queryStatisticalAction.do',
					type : 'post',
					data :{
						workShop:workShop,
						placement:placement,
						equipment:equipment,
						startDate:startDate,
						endDate:endDate,
						wheelCode:wheelCode,
						gearboxNum:gearboxNum,
						gearboxNog:gearboxNog,
						gearboxNop:gearboxNop,
						bearingNo:bearingNo,
						repairing:repairing
					},
					async : true,//异步方式
					success : function(data) {
						for(var i=0;i<data.rows.length;i++){
							array_xAxis.push([data.rows[i].horizontalAxle]);
							array_data.push([data.rows[i].verticalAxleI]);
							array_data_n.push([data.listN[i].verticalAxleI]);
						}
						
						$('#container').highcharts(
								{
									credits: {  enabled: false},//去掉highcharts.com商标
								    chart: {
								    	zoomType: 'x',
								        type: 'column',
								        renderTo: 'container'
								    },
								    title : {
										text : ' 每月检验数量统计',
										style:{
											//fontSize : '12px',
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
							        	min: 0,
										title : {
											text : '个数',
											style:{
							        			//color:'#4572A7'
							        		}
										},
										stackLabels: {
						                    enabled: true,
						                    style: {
						                        fontWeight: 'bold',
						                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
						                    }
						                }
									
									},
								    xAxis: {
								    	title: {
							                text: '月份',
							                style: {
							                   // color: '#4572A7'
							                }
							            },
								    	categories:array_xAxis
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
									 plotOptions: {
							                column: {
							                    stacking: 'normal',
							                    dataLabels: {
							                        enabled: true,
							                        color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
							                    }
							                }
							            },
							            tooltip: {
							                formatter: function() {
							                    return '<b>'+ this.x +'</b><br/>'+
							                        this.series.name +': '+ this.y +'<br/>'+
							                        'Total: '+ this.point.stackTotal;
							                }
							            },
								    series: [{
								    	name : '不合格数',
								    	data:array_data
								    },
								    {
								    	name : '合 格 数',
								    	data:array_data_n
								    }
								 
								    ]
								}
						);
					},
					fail : function() {
						alert("数据加载失败，请检查数据库网络！");
					}
				});
				//===
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