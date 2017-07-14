<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统异常</title>
</head>
<body>
	<h2>系统异常</h2>
	<hr />
	<s:property value="exception"/><br />
	<s:property value="exceptionStack"/>
</body>
</html>