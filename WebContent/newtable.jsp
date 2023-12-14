<%@page import="java.util.Iterator"%>
<%@page import="model.Table"%>
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
      margin: 20px auto;
      width: 40%; /* Changed width to 40% */
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    form h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    form label,
    form input,
    form select {
      display: block;
      margin-bottom: 15px;
      width: 100%;
    }
    form input[type="text"],
    form select {
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }
    form input[type="submit"] {
      padding: 10px 20px;
      background-color: rgb(39, 177, 232); /* Changed button color to sky blue */
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    form input[type="submit"]:hover {
      background-color: #043a4b; /* Darker shade on hover */
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
         style="background-color: #3e7946;"   >New Table</a
        >
        <a href="allReservations" class="redirect-button"
          >Reservations</a
        >
        <a href="pendingReservations" class="redirect-button">Pending Reservations</a>
        <a href="allUsers" class="redirect-button">Users</a>
        <a href="index.jsp" class="redirect-button" style="background-color: #8f4343;">Logout</a>
      </aside>

      <main>
	    <form action="newTable" method="post">
		  <h2>Add New Table</h2>
		  <label for="tableId">Table ID:</label>
		  <input type="text" id="tableId" name="tableId">
		
		  <label for="capacity">Capacity:</label>
		  	<select class="form-select" id="select3" name="capacity">
			    <option value="2">Couple (2 persons)</option>
			    <option value="4">Family and Friends (4 persons)</option>
			    <option value="6">Family and Friends (6 persons)</option>
			    <option value="10">Family and Friends (10 persons)</option>
			    <option value="20">Party (20 persons)</option>
			    <option value="30">Party (30 persons)</option>
			    <option value="50">Party (50 persons)</option>
			</select>
		
		  <label for="available">Available:</label>
		  <select id="available" name="available">
		    <option value="true">True</option>
		    <option value="false">False</option>
		  </select>
		
		  <input type="submit" value="Submit">
		</form>
  	</main>
    </div>
  </body>
</html>
