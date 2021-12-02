<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <h2>client</h2>
</head>
<body>
<p th:text="${client.getId()}">value</p>
<p th:text="${client.getName()}">value</p>
<p th:text="${client.getSurname()}">value</p>
<p th:text="${client.getSecondName()}">value</p>
<p th:text="${client.getTelephoneNumber()}">value</p>
<p th:text="${client.getEMail()}">value</p>
<p th:text="${client.getPassportNumber()}">value</p>


<a th:href="@{/clients/{id}/edit(id=${client.getId()})}">Edit</a>
<br/>
<form th:method="DELETE" th:action ="@{/clients/{id}(id=${client.getId()})}">
    <input type="submit" value="Delete">
</form>
</body>
</html>
