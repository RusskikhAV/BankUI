<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Edit Credit</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/label_style.css">
</head>
<body>
<div>
    <p id="head-text">Bank "..."</p>
    <div>
        <form th:method="PATCH" th:action="@{/credits/{id}(id=${credit.getClientId()})}" th:object="${credit}">
            <label for="interestRate">Percent:</label>
            <input type="text" th:field="*{interestRate}" id="interestRate"/>
            <p style="color: red" th:if="${#fields.hasErrors('interestRate')}" th:errors="*{interestRate}">Error</p>
            <br/>
            <label for="creditTerm">Credit Term:</label>
            <input type="text" th:field="*{creditTerm}" id="creditTerm"/>
            <p style="color: red" th:if="${#fields.hasErrors('creditTerm')}" th:errors="*{creditTerm}">Error name</p>
            <br/>
            <label for="amountCredit">Amount Credit:</label>
            <input type="text" th:field="*{amountCredit}" id="amountCredit"/>
            <p style="color: red" th:if="${#fields.hasErrors('amountCredit')}" th:errors="*{amountCredit}">Error
                name</p>
            <br/>

            <input type="submit" name="Edit"/>
        </form>
    </div>
    <div class="position">
        <div class="site_button">
            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a href="/credits"><span class="spot"></span>Previous</a>
                    </div>
                </svg>
            </div>

            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a href="/"><span class="spot"></span>Home</a>
                    </div>
                </svg>
            </div>
        </div>
    </div>
</div>
</body>
</html>