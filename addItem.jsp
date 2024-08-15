<%@ page import="entity.Todolist" %>
<%@ page import="java.util.List" %>
<%@ page import="jakarta.persistence.*" %>
<%@ page import="jakarta.persistence.EntityManagerFactory" %>
<%@ page import="jakarta.persistence.EntityManager" %>
<%@ page import="jakarta.persistence.EntityTransaction" %>
<%@ page import="jakarta.persistence.Persistence" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>To Do</title>
</head>
<body>
<h1>Enter item</h1><br/>
<form method="post" action ="/main">

<label for = "item">Item</label>


    <input type="text" id ="item" name ="item">
    <button type="submit">Add item</button>
    <button formaction="/showList.jsp">Show List</button>
    <button formaction="/deleteItem.jsp">Delete an item</button>

   </form>


</body>
</html>
