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
</head>
<!-- 
<form action="${pageContext.request.contextPath }/user/login.do" method="post">
	userName:<input type="text" name="userName" value="${user.userName }"/><br/>
	password:<input type="password" name="password" value="${user.password }"><br/>
	<input type="submit" value="login"/><font color="red">${errorMsg }</font>
</form>
<a href="${pageContext.request.contextPath }/protocol/getAllList.do" >协议查看</a>
<a href="${pageContext.request.contextPath }/protocol/createNewTable.do" >测试新表</a>
<a href="${pageContext.request.contextPath }/protocol/createDynamicTable.do" >建立动态表</a>
<a href="${pageContext.request.contextPath }/protocol/add.do" >插入数据</a>

<a href="${pageContext.request.contextPath }/record/ajax.do" >测试json</a>
<a href="custompager.html" target="blank">列表显示</a>

</body>
 -->

<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="height: 62px; background: #04629b;">
		<img src="img/logo.png" alt="alt" title="title" />
	</div>
	<div data-options="region:'west',split:true,title:'菜单'"
		style="width: 150px; padding: 10px;">

		<a href="javascript:void(0)" target="_blank" onclick="showPdf()">显示pdf文档</a>
		<a href="${pageContext.request.contextPath }/protocol/createDynamicTable.do" >建立动态表</a>
		<canvas id="the-canvas"></canvas>

	</div>
	<div data-options="region:'south',border:false"
		style="height: 30px; background: #04629b url(img/footer.png) no-repeat right top; color: #fff; text-align: center; display: table-cell; vertical-align: middle; line-height: 30px;">
		地址：中国辽宁省大连市甘井子区国贸街8号68A电话：+86-0411-86102429传真：+86-0411-86102429
		版权所有：大连柏盛源科技有限公司</div>
	<div data-options="region:'center',title:'数据分析',href:'main.html'">

	</div>
</body>
</html>