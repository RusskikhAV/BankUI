<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Create New Credit</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <form th:method="POST" th:action="@{/credits}" th:object="${credit}">
            <input type="text" th:field="*{interestRate}" id="interestRate" placeholder="Процентная ставка"/>
            <p style="color: red" th:if="${#fields.hasErrors('interestRate')}" th:errors="*{interestRate}">Error</p>
            <br/>
            <input type="text" th:field="*{creditTerm}" id="creditTerm" placeholder="Срок кредитования"/>
            <p style="color: red" th:if="${#fields.hasErrors('creditTerm')}" th:errors="*{creditTerm}">Error</p>
            <br/>
            <input type="text" th:field="*{amountCredit}" id="amountCredit" placeholder="Сумма кредита"/>
            <p style="color: red" th:if="${#fields.hasErrors('amountCredit')}" th:errors="*{amountCredit}">Error</p>
            <br/>
            <input type="text" th:field="*{clientId}" id="clientId" placeholder="Номер клиента"/>
            <p style="color: red" th:if="${#fields.hasErrors('clientId')}" th:errors="*{clientId}">Error</p>
            <br/>

            <input type="submit" name="Save" value="Apply for a loan"/>

        </form>
    </div>

</div>


</body>
</html>
