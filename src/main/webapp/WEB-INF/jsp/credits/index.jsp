<html xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="utf-8">
    <h2>All Credits</h2>
</head>
<body>

<div th:each="credit : ${credits}">
    <a th:href="@{/credits/{id}(id=${credit.getId()})}"
       th:text="${credit.getId() + ', ' + credit.getAmountCredit() + ', '+ credit.getInterestRate() + ', ' + credit.getCreditTerm()}">credit</a>
</div>

<br/>
<hr/>

<a href="/credits/new">Create new credit</a>
<br/>
<a href="/">Main page</a>
</body>
</html>
