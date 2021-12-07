<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Client Edit</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/clients/edit.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <p id="client-text">Client #<a th:text="${client.getClientId()}">v</a></p>
        <form th:method="PATCH" th:action="@{/clients/{id}(id=${client.getClientId()})}" th:object="${client}">
            <br/>
            <label for="name">Name: </label>
            <input type="text" th:field="*{name}" id="name"/>
            <p style="color: red" th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Error name</p>
            <br/>
            <label for="surname">Surname: </label>
            <input type="text" th:field="*{surname}" id="surname"/>
            <p style="color: red" th:if="${#fields.hasErrors('surname')}" th:errors="*{surname}">Error surname</p>
            <br/>
            <label for="secondName">Second name: </label>
            <input type="text" th:field="*{secondName}" id="secondName"/>
            <p style="color: red" th:if="${#fields.hasErrors('secondName')}" th:errors="*{secondName}">Error second
                name</p>
            <br/>
            <label for="telephoneNumber">Telephone Number:</label>
            <input type="text" th:field="*{telephoneNumber}" id="telephoneNumber"/>
            <p style="color: red" th:if="${#fields.hasErrors('telephoneNumber')}" th:errors="*{telephoneNumber}">Error
                telephone
                number</p>
            <br/>
            <label for="eMail">E-mail: </label>
            <input type="text" th:field="*{eMail}" id="eMail"/>
            <p style="color: red" th:if="${#fields.hasErrors('eMail')}" th:errors="*{eMail}">Error email</p>
            <br/>
            <label for="passportNumber">Passport Number: </label>
            <input type="text" th:field="*{passportNumber}" id="passportNumber">
            <p style="color: red" th:if="${#fields.hasErrors('passportNumber')}" th:errors="*{passportNumber}">Error
                passport
                number</p>
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
                        <a href="/banks/clients"><span class="spot"></span>Previous</a>
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
