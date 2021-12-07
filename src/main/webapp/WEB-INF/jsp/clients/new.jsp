<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Create New Client</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <form th:method="POST" th:action="@{/clients}" th:object="${client}">
            <input type="text" th:field="*{name}" id="name" placeholder="Имя"/>
            <p style="color: red" th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Error name</p>
            <br/>
            <input type="text" th:field="*{surname}" id="surname" placeholder="Фамилия"/>
            <p style="color: red" th:if="${#fields.hasErrors('surname')}" th:errors="*{surname}">Error surname</p>
            <br/>
            <input type="text" th:field="*{secondName}" id="secondName" placeholder="Отчество"/>
            <p style="color: red" th:if="${#fields.hasErrors('secondName')}" th:errors="*{secondName}">Error second
                name</p>
            <br/>
            <input type="text" th:field="*{telephoneNumber}" id="telephoneNumber" placeholder="8-888-888-88-88"/>
            <p style="color: red" th:if="${#fields.hasErrors('telephoneNumber')}" th:errors="*{telephoneNumber}">Error
                telephone
                number</p>
            <br/>
            <input type="text" th:field="*{eMail}" id="eMail" placeholder="Email"/>
            <p style="color: red" th:if="${#fields.hasErrors('eMail')}" th:errors="*{eMail}">Error email</p>
            <br/>
            <input type="text" th:field="*{passportNumber}" id="passportNumber" placeholder="Номер паспорта">
            <p style="color: red" th:if="${#fields.hasErrors('passportNumber')}" th:errors="*{passportNumber}">Error
                passport
                number</p>
            <br/>
            <input type="submit" name="Save"/>

        </form>
    </div>
</div>
</body>
</html>