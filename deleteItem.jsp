<%@ page import="jakarta.persistence.EntityManagerFactory" %>
<%@ page import="jakarta.persistence.Persistence" %>
<%@ page import="jakarta.persistence.EntityManager" %>
<%@ page import="jakarta.persistence.EntityTransaction" %>
<%@ page import="entity.Todolist" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show List</title>
</head>
<body>
<form method="post" action ="delete">
    <h1>To Do List</h1><br>
    <table border="1">
        <tr>
            <td>To Do</td>
            <td>ID</td>
        </tr>
        <%
            EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
            EntityManager entityManager = entityManagerFactory.createEntityManager();
            EntityTransaction transaction = entityManager.getTransaction();
            List<Todolist> toDoItem = entityManager.createQuery("SELECT e FROM Todolist e").getResultList();

            for (Todolist item : toDoItem)
            {
        %>
        <tr><td><%=item.getItem() %></td>
            <td><%=item.getId() %></td>
        </tr>
        <%
            }
        %>


    </table>   <br>
    <label for = "Id">Enter Item ID to delete</label>


    <input type="text" id ="Id" name ="Id">
    <button type = "submit">Delete</button><br><br>

    <button formaction="/addItem.jsp">Or Click To Add another item</button>

</form>
</body>
</html>
