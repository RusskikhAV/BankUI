<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Create New Client</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/label_style.css">
</head>
<body>
<div>
    <p id="head-text">Bank "..."</p>
    <div>
        <form th:method="POST" th:action="@{/clients}" th:object="${client}">
            <label for="name">Name: </label>
            <input type="text" th:field="*{name}" id="name" placeholder="Имя"/>
            <p style="color: red" th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Error name</p>
            <br/>
            <label for="surname">Surname: </label>
            <input type="text" th:field="*{surname}" id="surname" placeholder="Фамилия"/>
            <p style="color: red" th:if="${#fields.hasErrors('surname')}" th:errors="*{surname}">Error surname</p>
            <br/>
            <label for="secondName">Second name: </label>
            <input type="text" th:field="*{secondName}" id="secondName" placeholder="Отчество"/>
            <p style="color: red" th:if="${#fields.hasErrors('secondName')}" th:errors="*{secondName}">Error second
                name</p>
            <br/>
            <label for="telephoneNumber">Telephone Number:</label>
            <input type="text" th:field="*{telephoneNumber}" id="telephoneNumber" placeholder="+7(888)888-8888"/>
            <p style="color: red" th:if="${#fields.hasErrors('telephoneNumber')}" th:errors="*{telephoneNumber}">Error
                telephone
                number</p>
            <br/>
            <label for="eMail">E-mail: </label>
            <input type="text" th:field="*{eMail}" id="eMail" placeholder="Email"/>
            <p style="color: red" th:if="${#fields.hasErrors('eMail')}" th:errors="*{eMail}">Error email</p>
            <br/>
            <label for="passportNumber">Passport Number: </label>
            <input type="text" th:field="*{passportNumber}" id="passportNumber" placeholder="Номер паспорта">
            <p style="color: red" th:if="${#fields.hasErrors('passportNumber')}" th:errors="*{passportNumber}">Error
                passport
                number</p>
            <br/>
            <input type="submit" name="Save" value="Add new Client"/>
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