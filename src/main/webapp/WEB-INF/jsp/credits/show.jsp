<html xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>Credit {credit.id}</h2>
</head>
<body>
<p th:text="${credit.getId()}">value</p>
<p th:text="${credit.getAmountCredit()}">value</p>
<p th:text="${credit.getInterestRate()}">value</p>
<p th:text="${credit.getCreditTerm}">value</p>


<a th:href="@{/credits/{id}/edit(id=${credit.getId()})}">Edit</a>
<br/>
<form th:method="DELETE" th:action ="@{/credits/{id}(id=${credit.getId()})}">
    <input type="submit" value="Delete">
</form>
</body>
</html>
