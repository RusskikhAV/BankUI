
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainPageStyle.css">
</head>
<body>
<div>
    <h1>Здравствуйте,${pageContext.request.userPrincipal.name}</h1>

    <h5><a href="/gamebullcow">Играть!</a> </h5>

</div>
</body>
</html>