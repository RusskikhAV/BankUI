<html xmlns:th="http://thymeleaf.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://thymeleaf.org"/>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainPageStyle.css">
</head>
<body>
<div>
    <h1>Здравствуйте,${pageContext.request.userPrincipal.name}</h1>

    <h5><a href="/gamebullcow">Играть!</a> </h5>

</div>
</body>
</html>