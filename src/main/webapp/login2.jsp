<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>检修轴承数据采集分析系统</title>
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui-1.5.4.5/themes/default/easyui.css">
<link rel="../stylesheet" type="text/css"
	href="../jquery-easyui-1.5.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui-1.5.4.5/themes/color.css">
<script type="text/javascript" src="../jquery-easyui-1.5.4.5/jquery.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui-1.5.4.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui-1.5.4.5/locale/easyui-lang-zh_CN.js"></script>

</head>
<body>

	<div style="margin: 20px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="$('#w').window('open')">Open</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			onclick="$('#w').window('close')">Close</a>
	</div>
	-->
	<div id="w" class="easyui-window" title="请先登录"
		data-options="modal:true,closed:true,iconCls:'Lockgo',closable:false,minimizable:false"
		style="width: 400px; padding: 20px 70px 20px 70px;">
		<div style="margin-bottom: 10px">
			<input class="easyui-textbox" id="logname"
				style="width: 100%; height: 30px; padding: 12px"
				data-options="prompt:'登录邮箱',iconCls:'icon-man',iconWidth:38">
		</div>
		<div style="margin-bottom: 20px">
			<input class="easyui-textbox" id="logpass" type="password"
				style="width: 100%; height: 30px; padding: 12px"
				data-options="prompt:'登录密码',iconCls:'icon-lock',iconWidth:38">
		</div>
		<div style="margin-bottom: 20px">
			<input class="easyui-textbox" type="text" id="logyzm"
				style="width: 50%; height: 30px; padding: 12px"
				data-options="prompt:'验证码'"> <a href="javascript:;"
				class="showcode" onclick="changeVeryfy()"><img
				style="margin: 0 0 0 3px; vertical-align: middle; height: 26px;"
				src="/index.php?s=/Xjadmin/verifyCode"></a>
		</div>
		<div style="margin-bottom: 20px">
			<input type="checkbox" checked="checked" id="logrem"> <span>Remember me</span>
		</div>
		<div>
			<a href="javascript:;" onclick="dologin()" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'"
				style="padding: 5px 0px; width: 100%;"> <span
				style="font-size: 14px;">登录</span>
			</a>
		</div>
	</div>
<script type="text/javascript">

		/* 查询数据条件 */
		function dologin(){
			var logname=$('#logname').textbox('getValue');
			var logpass=$('#logpass').textbox('getValue');
			alert(logname+"====1==="+logpass);
			//加载最近检测数据
			$.ajax({
				url : 'login.do',
				type : 'get',
				data: "logname="+logname+"&logpass="+logpass,
				dataType: 'json',
				async : true,//异步方式
				success : function(data) {
					alert("=======");
				},
				fail : function() {
					alert("数据加载失败，请检查数据库网络！");
				}
			});
		}
</script>
</body>
</html>