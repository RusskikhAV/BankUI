<html xmlns:th="http://thymeleaf.org">
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/bank/bank.css">
</head>
<body>

<div th:each="credit : ${credits}">
    <a th:href="@{/credits/{id}(id=${credit.getCreditId()})}"
       th:text="${credit.getCreditId() + ', '+ credit.getInterestRate() + ', ' + credit.getCreditTerm() + ', ' + credit.getClientId()}">credit</a>
</div>
<div>
    <a href="/credits/new">Оформить кредит</a>
</div>
</body>
</html>
