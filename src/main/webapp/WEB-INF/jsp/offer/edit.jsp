<!DOCTYPE html>
<html xmlns:th="https://thymeleaf.org"
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
        <form th:method="PATCH"
              th:action="@{/offer/{idClient}/{idCheque}(idClient=${creditOffer.clientId},idCheque=${creditOffer.idChek})}"
              th:object="${creditOffer}">

            <label for="date">Date:</label>
            <input type="text" th:field="*{date}" id="date"/>
            <p style="color: red" th:if="${#fields.hasErrors('date')}" th:errors="*{date}">Error name</p>
            <br/>
            <label for="payment">Payment:</label>
            <input type="text" th:field="*{payment}" id="payment"/>
            <p style="color: red" th:if="${#fields.hasErrors('payment')}" th:errors="*{payment}">Error name</p>
            <br/>
            <label for="percent">Percent:</label>
            <input type="text" th:field="*{percent}" id="percent"/>
            <p style="color: red" th:if="${#fields.hasErrors('percent')}" th:errors="*{percent}">Error name</p>
            <br/>
            <label for="bodyCredit">Body credit:</label>
            <input type="text" th:field="*{bodyCredit}" id="bodyCredit"/>
            <p style="color: red" th:if="${#fields.hasErrors('bodyCredit')}" th:errors="*{bodyCredit}">Error name</p>
            <br/>
            <label for="balance">Balance:</label>
            <input type="text" th:field="*{balance}" id="balance"/>
            <p style="color: red" th:if="${#fields.hasErrors('balance')}" th:errors="*{balance}">Error name</p>
            <br/>

            <input type="submit" name="Edit" value="Edit Schedule"/>
        </form>
    </div>
    <div>
        <form th:method="DELETE"
              th:action="@{/offer/{idClient}/{idCheque}(idClient=${creditOffer.clientId},idCheque=${creditOffer.idChek})}">
            <input type="submit" value="Delete">
        </form>
    </div>
</div>
</body>
</html>
