<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>KindEditor JSP</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="editor/themes/default/default.css" />
		<link rel="stylesheet" href="editor/plugins/code/prettify.css" />
		<script charset="utf-8" src="editor/kindeditor.js"></script>
		<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
		<script charset="utf-8" src="editor/plugins/code/prettify.js"></script>
		<script>
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : 'editor/plugins/code/prettify.css',
			uploadJson : 'editor/jsp/upload_json.jsp',
			fileManagerJson : 'editor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
			}
		});
		prettyPrint();
	});
</script>
	</head>

	<body>
		This is my JSP page.
		<br>

		<textarea id="editor_id" name="content"
			style="width: 700px; height: 300px;"></textarea>

	</body>
</html>
