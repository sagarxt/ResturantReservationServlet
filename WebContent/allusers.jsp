<%@page import="model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Admin Dashboard</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
      }
      header {
        background-color: #333;
        color: #fff;
        padding: 10px;
        height: 10vh;
        text-align: center;
      }
      .container {
        display: flex;
        padding: 20px;
        height: 80vh;
      }
      aside {
        background-color: #333;
        color: #fff;
        width: 20%;
        padding: 20px;
        margin-right: 20px;
        border-radius: 8px;
      }
      main {
        flex: 1;
        background-color: #a6f2f4;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
      h2 {
        margin-top: 0;
      }

      .redirect-button {
        display: inline-block;
        padding: 10px 20px;
        text-align: center;
        background-color: #333;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        width: 80%;
        margin: 10px;
      }
      .redirect-button:hover {
        background-color: #555;
      }

      aside {
        display: flex;
        flex-direction: column;
        align-items: center;
        
      }
      main {
      flex: 1;
      padding: 20px;
      width: 100%;
	  }
	  
	  form {
      width: 60%;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .search-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    input[type="text"] {
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
      width: 70%;
      margin-right: 10px;
    }
    button[type="submit"] {
      padding: 8px 15px;
      background-color: #333;
      color: #fff;
      border: none;
      width: 300px;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    button[type="submit"]:hover {
      background-color: #555;
    }
    table {
      width: 100%;
      margin: 0 auto;
      border-collapse: collapse;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table th,
    table td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ccc;
      text-align: center;
    }
    table th {
      background-color: #f2f2f2;
    }
    </style>
  </head>
  <body>
    <header>
      <h1>Admin Dashboard</h1>
    </header>

    <div class="container">
      <aside>
        <a href="admin.jsp" class="redirect-button"
         >Dashboard</a
        >
        <a href="allTables" class="redirect-button"
        >View Tables</a
        >
        <a href="newtable.jsp" class="redirect-button"
          >New Table</a
        >
        <a href="allReservations" class="redirect-button"
         >Reservations</a
        >
        <a href="pendingReservations" class="redirect-button">Pending Reservations</a>
        <a href="allUsers" class="redirect-button"  style="background-color: #3e7946;">Users</a>
        <a href="index.jsp" class="redirect-button" style="background-color: #8f4343;">Logout</a>
      </aside>

      <main>
	    <table>
	      <thead>
	        <tr>
	          <th>User ID</th>
	          <th>Name</th>
	          <th>Phone Number</th>
	          <th>Email</th>
	        </tr>
	      </thead>
	      <tbody>
	       <% ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");
	       	Iterator iterator = users.iterator();
	       	while(iterator.hasNext()){
	       		User user =(User) iterator.next();	
	       	
	       %>
	        <tr>
	          <td><%= user.getUserId() %></td>
	          <td><%= user.getName() %></td>
	          <td><%= user.getPhoneNumber() %></td>
	          <td><%= user.getEmail() %></td>
	        </tr>
	        <%} %>
	      </tbody>
	    </table>
  	</main>
    </div>
  </body>
</html>
