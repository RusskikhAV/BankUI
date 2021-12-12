<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <title>Credit schedule</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/table_style.css">
</head>
<body>
<div>
    <p id="head-text">Bank "..."</p>
    <div>
        <div class="svg-wrapper">
            <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                <rect id="shape" height="40" width="150"/>
                <div id="text">
                    <a href="/"><span class="spot"></span>Edit(future)</a>
                </div>
            </svg>
        </div>
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
    <div>
        <table class="table">
            <tr>
                <th>id Cheque</th>
                <th>Date payment</th>
                <th>Payment</th>
                <th>Percent</th>
                <th>Body Credit</th>
                <th>Balance</th>
                <th>Client Id</th>
                <th>Credit Id</th>
                <th>Edit</th>
            </tr>
            <tr th:each="offer : ${creditOffer}">
                <td th:text="${offer.getIdChek()}">id</td>
                <td th:text="${offer.getDate()}">date</td>
                <td th:text="${offer.getPayment()}">pay</td>
                <td th:text="${offer.getPercent()}">perc</td>
                <td th:text="${offer.getBodyCredit()}">body</td>
                <td th:text="${offer.getBalance()}">balance</td>
                <td th:text="${offer.getClientId()}">clientId</td>
                <td th:text="${offer.getCreditId()}">clientId</td>
                <td><a th:href="@{/offer/{idClient}/{idCheque}/edit(idClient=${offer.getClientId()},idCheque=${offer.getIdChek()})}">edit</a></td>
            </tr>
        </table>
    </div>
    <div>
        <div class="svg-wrapper">
            <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                <rect id="shape" height="40" width="150"/>
                <div id="text">
                    <a href="/"><span class="spot"></span>Edit(future)</a>
                </div>
            </svg>
        </div>
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
</body>
</html>