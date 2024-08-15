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
<form method="post">
    <h1>To Do List</h1><br>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>To Do</td>
        </tr>
        <%
            EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
            EntityManager entityManager = entityManagerFactory.createEntityManager();
            EntityTransaction transaction = entityManager.getTransaction();
            List<Todolist> toDoItem = entityManager.createQuery("SELECT e FROM Todolist e").getResultList();

                for (Todolist item : toDoItem)
                {
        %>
        <tr><td><%=item.getId() %></td>
            <td><%=item.getItem() %></td>
    </tr>
        <%
            }
        %>


    </table>

    <button formaction="/addItem.jsp">Add another item</button>
    <button formaction="/deleteItem.jsp">Delete an Item</button>
</form>
</body>
</html>
