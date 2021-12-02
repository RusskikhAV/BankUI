<html xmlns:th="http://thymeleaf.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>client edit</h2>
</head>
<body>
<form th:method="PATCH" th:action="@{/clients/{id}(id=${client.getId()})}" th:object="${client}">
    <br/>
    <input type="text" th:field="*{name}" id="name"/>
    <p style="color: red" th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Error name</p>
    <br/>
    <input type="text" th:field="*{surname}" id="surname"/>
    <p style="color: red" th:if="${#fields.hasErrors('surname')}" th:errors="*{surname}">Error surname</p>
    <br/>
    <input type="text" th:field="*{secondName}" id="secondName" />
    <p style="color: red" th:if="${#fields.hasErrors('secondName')}" th:errors="*{secondName}">Error second name</p>
    <br/>
    <input type="text" th:field="*{telephoneNumber}" id="telephoneNumber"/>
    <p style="color: red" th:if="${#fields.hasErrors('telephoneNumber')}" th:errors="*{telephoneNumber}">Error trlephone number</p>
    <br/>
    <input type="text" th:field="*{eMail}" id="eMail"/>
    <p style="color: red" th:if="${#fields.hasErrors('eMail')}" th:errors="*{eMail}">Error email</p>
    <br/>
    <input type="text" th:field="*{passportNumber}" id="passportNumber">
    <p style="color: red" th:if="${#fields.hasErrors('passportNumber')}" th:errors="*{passportNumber}">Error passport number</p>
    <br/>
    <input type="submit" name="Edit"/>

</form>
</body>
</html>
