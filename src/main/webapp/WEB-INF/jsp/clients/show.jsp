<html xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/clients/clientShow.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <p id="client-text">Client #<a th:text="${client.getClientId()}">v</a></p>
        <table class="table">
            <tr>
                <th>First Name</th>
                <td th:text="${client.name}"></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td th:text="${client.surname}"></td>
            </tr>
            <tr>
                <th>Second Name</th>
                <td th:text="${client.secondName}"></td>
            </tr>
            <tr>
                <th>Telephone Number</th>
                <td th:text="${client.telephoneNumber}"></td>
            </tr>
            <tr>
                <th>E-mail</th>
                <td th:text="${client.EMail}"></td>
            </tr>
            <tr>
                <th>Passport Number</th>
                <td th:text="${client.passportNumber}"></td>
            </tr>
        </table>
    </div>
    <div class="position">
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
                    <a th:href="@{/clients/{id}/edit(id=${client.getClientId()})}"><span class="spot"></span>Edit client</a>
                </div>
            </svg>
        </div>
        <div class="svg-wrapper">
            <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                <rect id="shape" height="40" width="150"/>
                <div id="text">
                    <form th:method="DELETE" th:action="@{/clients/{id}(id=${client.getClientId()})}">
                        <span class="spot"></span><input type="submit" value="Delete"><a>Try</a>
                    </form>
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
        <div class="svg-wrapper">
            <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                <rect id="shape" height="40" width="150"/>
                <div id="text">
                    <a th:href="@{/credits/{id}/client_credits(id=${client.getClientId()})}" target="_blank"
                       onClick="popupWin = window.open(this.href, 'contacts', 'location,width=1200,height=900,top=0'); popupWin.focus(); return false;"><span
                            class="spot"></span>Client credits</a>
                </div>
            </svg>
        </div>
    </div>
</div>

</body>
</html>
