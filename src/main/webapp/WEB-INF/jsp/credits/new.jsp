<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>New credit</h2>
</head>
<body>

<form th:method="POST" th:action="@{/credits}" th:object="${credit}">


    <input type="text" th:field="*{interestRate}" id="interestRate" placeholder="Процентная ставка"/>
    <p style="color: red" th:if="${#fields.hasErrors('interestRate')}" th:errors="*{interestRate}">Error</p>
    <br/>
    <input type="text" th:field="*{creditTerm}" id="creditTerm" placeholder="Срок кредитования"/>
    <p style="color: red" th:if="${#fields.hasErrors('creditTerm')}" th:errors="*{creditTerm}">Error</p>
    <br/>
    <input type="text" th:field="*{clientId}" id="clientId" placeholder="Номер клиента"/>
    <p style="color: red" th:if="${#fields.hasErrors('clientId')}" th:errors="*{clientId}">Error</p>
    <br/>
    <input type="submit" name="Save"/>

</form>
</body>
</html>
