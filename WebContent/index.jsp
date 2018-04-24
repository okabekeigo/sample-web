<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload User Image</title>
</head>
<body>
<h2>Struts2ファイルアップロードサンプル</h2>
<s:form action="FileUploadAction" method="post" enctype="multipart/form-data">
<s:file name="userImage" label="画像" />
<s:submit value="アップロード" align="center" />
</s:form>
</body>
</html>