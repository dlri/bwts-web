<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path+ "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务调度监控</title>
</head>
<body >
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
<div style="width:100%;height:100%;float:left;padding-top:10px;font-size:10px;">


<div style="width:58%;padding-left:1%;padding-right:1%;height:85%;float:left;">
		<table id="testResult" class="easyui-datagrid" style="width:100%; height:100%" title="调度任务计划"
			data-options="singleSelect:true,collapsible:true,pagination:false,url:'<%=basePath%>quartz/queryScheduleJob.do'">
			<thead>
				<tr>
					<th data-options="field:'jobId',width:60,align:'center'">任务编号</th>
					<th data-options="field:'jobName',width:fixWidth(0.5),align:'center'">任务名称</th>
					<th data-options="field:'jobGroup',width:fixWidth(0.5),align:'center'">任务分组</th>
					<th data-options="field:'jobStatus',width:fixWidth(0.5),align:'center',formatter:jobStatus,editor:
							{type:'combobox',
							options:{
                        		textField: 'status',
                        		valueField: 'value',
                        		data: [
                            		{status: '预留',value: 0},
                            		{status: '启动',value: 1},
                            		{status: '禁用',value: 2}
                        			],
                        		required: true,
                       			missingMessage: '状态选择'}}">任务状态</th>
					<th data-options="field:'cronExpression',width:fixWidth(1.0),align:'center',editor:'textbox'">时间表达式</th>
					<th data-options="field:'ftpIp',width:fixWidth(1),align:'center',editor:'textbox'">FTP连接地址</th>
					<th data-options="field:'ftpPort',width:fixWidth(0.5),align:'center',editor:'textbox'">端口</th>
					<th data-options="field:'ftpName',width:fixWidth(0.5),align:'center',editor:'textbox'">用户名</th>
					<th data-options="field:'ftpPassword',width:fixWidth(0.8),align:'center',editor:'textbox'">密码</th>

				</tr>
			</thead>
		</table>
	</div>
	
	<div style="width:39%;padding-right:1%;height:85%;float:right;">
		<table id="monitorRun" class="easyui-datagrid" style="width:100%; height:100%" title="任务执行监测"
			data-options="singleSelect:true,collapsible:true,pagination:false,url:'<%=basePath%>quartz/monitorRun.do'">
			<thead>
				<tr>
					<th data-options="field:'jobName',width:fixWidth(0.7),align:'center'">任务名称</th>
					<th data-options="field:'jobGroup',width:fixWidth(0.7),align:'center'">任务分组</th>
					<th data-options="field:'jobDesc',width:fixWidth(0.6),align:'center'">是否在线</th>
					<th data-options="field:'jobStatus',width:fixWidth(0.7),align:'center'">任务状态</th>
					<th data-options="field:'cronExpression',width:fixWidth(1.2),align:'center'">时间表达式</th>
					
				</tr>
			</thead>
		</table>
	</div>
	</div>
	<div id="wc" class="easyui-window" title="详情"
		data-options="closed:true,iconCls:'icon-save',border:'thin',cls:'c2',left:'20px',top:'74px'" />
	<style type="text/css">
	html, body {height:100%;}
	body {background:#fff;}
	a:link {text-decoration: none;color: #12566e;}
	a:visited {text-decoration: none;color: #ff0000;}
	a:hover {text-decoration: underline;color: #47b159;}
	a:active {text-decoration: overline;color: #F00;}
	a.web:visited {text-decoration: none;color: #12566e;}
	</style>
	
	<script type="text/javascript">
$(function(){
//加载最近检测数据
$.ajax({
	url : '',
	type : 'post',
	async : true,//异步方式
	success : function(data) {
		//$('#testResult').datagrid('loadData',data);
	},
	fail : function() {
		alert("数据加载失败，请检查数据库网络！");
	}
});

});
function fixWidth(percent)
{
    return document.body.clientWidth * percent/10; //这里你可以自己做调整
}
function jobStatus(value, row, index)
{
	var str="";
	
	switch(value){
	case '0':
		str="预留";
		break;
	case '1':
		str="启用";
		break;
	case '2':
		str="禁用";
		break;
	}
	return str;
}

$('#testResult').datagrid({
    toolbar: [{
        text:'增加',
        iconCls: 'icon-add',
        handler: function(){
            addOrMdfFlag = 0;
            rowEdit = 0;
            $('#testResult').datagrid('insertRow',{
                index : rowEdit ,
                row:{
                    
                }
            });
            $('#testResult').datagrid('beginEdit',rowEdit);
            console.info("rowEdit ="+ rowEdit +"*****"+"addOrMdfFlag = " +addOrMdfFlag);
        }
    },'-',{
        text:'修改',
        iconCls: 'icon-edit',
        handler: function(){
            addOrMdfFlag = 1;
            var row = $('#testResult').datagrid('getSelected');
            var index = $('#testResult').datagrid('getRowIndex',row);
            rowEdit = index;        
            console.info("rowEdit ="+ rowEdit+"*****"+"addOrMdfFlag = " +addOrMdfFlag);
            $('#testResult').datagrid('beginEdit',index);
            
        }
    },'-',{
        text:'删除',
        iconCls: 'icon-remove',
        handler: function(){
        	alert("您无权限删除，请连接管理员！");
            //del();
    }
    },'-',{
        text:'取消选中',
        iconCls: 'icon-undo',
        handler: function(){
            $('#testResult').datagrid('clearSelections');
            $('#testResult').datagrid('unselectAll');
            $('#testResult').datagrid('endEdit',rowEdit);
        }
    },'-',{
        text:'保存',
        iconCls: 'icon-save',
        handler: function(){
            console.info("rowEdit ="+ rowEdit);
            $('#testResult').datagrid('endEdit',rowEdit);
        }
    }],
    onAfterEdit : function (rowIndex, rowData, changes){
        if(addOrMdfFlag == 0){
            console.info("addOrMdfFlag = "+addOrMdfFlag);
            alert("您没有权限添加，请连接管理员！");
            /*
            $.ajax({
                   type: "POST",
                   url: "<%=basePath%>quartz/add.do",
                   data: {
                       "userName":rowData.userName,
                          "age":rowData.age
                   },
                   success: function(msg){
                     $('#testResult').datagrid('load');
                   }
                });
            */
        }
        else if(addOrMdfFlag == 1){
            console.info("addOrMdfFlag = "+addOrMdfFlag);
            $.ajax({
                   type: "POST",
                   url: "<%=basePath%>quartz/updateScheduleJob.do",
                   data: {
                	   "jobId":rowData.jobId,
                	   "jobStatus":rowData.jobStatus,
                	   "cronExpression":rowData.cronExpression,
                       "ftpIp":rowData.ftpIp,
                       "ftpPort":rowData.ftpPort,
                       "ftpName":rowData.ftpName,
                       "ftpPassword":rowData.ftpPassword
                   },
                   success: function(msg){
                     $('#testResult').datagrid('load');
                   }
                });
        }
        else {
            alert("出现错误，请于管理员联系");
        }
    }
});



$('#monitorRun').datagrid({
    toolbar: [{
        text:'暂停',
        iconCls: 'icon-no',
        handler: function(){
        	var row = $('#monitorRun').datagrid('getSelected');
        	var url='<%=basePath%>quartz/'+row.jobGroup+'/'+row.jobName+'/stop.do';
        	$.ajax({
        		url : url,
        		type : 'get',
        		async : false,//异步方式
        		success : function(data) {
        			$('#monitorRun').datagrid('load');
        			alert("任务暂停成功！");
        		},
        		fail : function() {
        			alert("任务暂停失败！");
        		}
        	});
        }
    },'-',{
        text:'恢复',
        iconCls: 'icon-reload',
        handler: function(){
        	var row = $('#monitorRun').datagrid('getSelected');
        	var url='<%=basePath%>quartz/'+row.jobGroup+'/'+row.jobName+'/reStart.do';
        	$.ajax({
        		url : url,
        		type : 'get',
        		async : false,//异步方式
        		success : function(data) {
        			$('#monitorRun').datagrid('load');
        			alert("任务恢复成功！");
        		},
        		fail : function() {
        			alert("任务恢复失败，请检查数据库网络！");
        		}
        	});            
        }
    },'-',{
        text:'删除',
        iconCls: 'icon-remove',
        handler: function(){
        	var row = $('#monitorRun').datagrid('getSelected');
        	var url='<%=basePath%>quartz/'+row.jobGroup+'/'+row.jobName+'/del.do';
        	$.ajax({
        		url : url,
        		type : 'get',
        		async : false,//异步方式
        		success : function(data) {
        			$('#monitorRun').datagrid('load');
        			alert("任务删除成功！");
        		},
        		fail : function() {
        			alert("任务删除失败，请检查数据库网络！");
        		}
        	});
    }
    },'-',{
        text:'执行一次',
        iconCls: 'icon-ok',
        handler: function(){
        	var row = $('#monitorRun').datagrid('getSelected');
        	var url='<%=basePath%>quartz/'+row.jobGroup+'/'+row.jobName+'/startNow.do';
        	$.ajax({
        		url : url,
        		type : 'get',
        		async : false,//异步方式
        		success : function(data) {
        			$('#monitorRun').datagrid('load');
        			alert("任务成功执行！");
        		},
        		fail : function() {
        			alert("任务执行失败，请检查数据库网络！");
        		}
        	});
        }
    }]
    
});
</script>
<%} %>
</body>
</html>