<html xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>Credit #<a th:text="${credit.getCreditId()}">v</a></h2>
</head>
<body>
<p th:text="${credit.getCreditId()}">value</p>
<p th:text="${credit.getInterestRate()}">value</p>
<p th:text="${credit.getCreditTerm()}">value</p>
<p th:text="${credit.getClientId()}">value</p>


<a th:href="@{/credits/{id}/edit(id=${credit.getCreditId()})}">Edit</a>
<br/>
<form th:method="DELETE" th:action="@{/credits/{id}(id=${credit.getCreditId()})}">
    <input type="submit" value="Delete">
</form>
</body>
</html>
