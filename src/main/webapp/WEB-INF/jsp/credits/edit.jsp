<html xmlns:th="http://thymeleaf.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>credit edit</h2>
</head>
<body>
<form th:method="PATCH" th:action="@{/credits/{id}(id=${credit.getCreditId()})}" th:object="${credit}">
    <br/>
    <input type="text" th:field="*{interestRate}" id="interestRate"/>
    <p style="color: red" th:if="${#fields.hasErrors('interestRate')}" th:errors="*{interestRate}">Error</p>
    <br/>
    <input type="text" th:field="*{creditTerm}" id="creditTerm"/>
    <p style="color: red" th:if="${#fields.hasErrors('creditTerm')}" th:errors="*{creditTerm}">Error name</p>
    <br/>

    <input type="submit" name="Edit"/>

</form>
</body>
</html>
