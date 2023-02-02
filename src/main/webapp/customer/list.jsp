<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
  <a href="/customers?action=create">Create new customer</a>
</p>
<table border="1">
  <tr>
    <td>Name</td>
    <td>Email</td>
    <td>Address</td>
    <td>Edit</td>
    <td>Delete</td>
  </tr>
  <c:forEach items='${requestScope["customers"]}' var="element">
    <tr>
      <td><a href="/customers?action=view&id=${element.getId()}">${element.getName()}</a></td>
      <td>${element.getEmail()}</td>
      <td>${element.getAddress()}</td>
      <td><a href="/customers?action=edit&id=${element.getId()}">edit</a></td>
      <td><a href="/customers?action=delete&id=${element.getId()}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>