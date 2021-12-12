<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <title>About Credit</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/table_style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/client_text.css">
</head>
<body>
<div>
    <p id="head-text">Bank "..."</p>
    <div>
        <p id="client-text">Credit #<a th:text="${oneCredit.getCreditId()}">id</a></p>
        <form th:method="POST"
              th:action="@{/credits//{clientId}/{creditId}/about_the_credit(clientId=${oneCredit.getClientId()},creditId=${oneCredit.getCreditId()})}"
              th:object="${oneCredit}">
            <input type="submit" name="Save" value="Create Schedule"/>
        <table class="table">
            <tr>
                <th>Credit id</th>
                <td th:text="${oneCredit.getCreditId()}"></td>
            </tr>
            <tr>
                <th>Interest Rate</th>
                <td><input type="text" th:field="*{interestRate}" readonly="readonly"></td>
            </tr>
            <tr>
                <th>Amount Credit</th>
                <td><input type="text" th:field="*{amountCredit}" readonly="readonly"></td>
            </tr>
            <tr>
                <th>Credit Term</th>
                <td><input type="text" th:field="*{creditTerm}" readonly="readonly"></td>
            </tr>
        </table>
        </form>
    </div>
    <div>
        <div class="clients_button">
            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a th:href="@{/credits/{id}/edit(id=${oneCredit.getCreditId()})}"><span class="spot"></span>Edit
                            credit</a>
                    </div>
                </svg>
            </div>

            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a th:href="@{/offer/{idClient}/{idCredit}/schedule_of_the_one_credit(idClient=${oneCredit.getClientId()},idCredit=${oneCredit.getCreditId()})}"><span class="spot"></span>check schedule</a>
                    </div>
                </svg>
            </div>
        </div>
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