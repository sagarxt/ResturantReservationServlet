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
      .card-outer {
        width: 300px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 1px 10px rgba(0, 0, 0, 0.3);
        overflow: hidden;
        margin: 10px;
        padding-bottom: 15px;
      }
      .card-inner {
        padding: 5px;
      }
      .title {
        color: #291212;
        margin-bottom: 10px;
        font-weight: 600;
        text-align: left;
        margin-left: 20px;
        position: relative;
        padding-left: 20px;
      }
      .card-title {
        text-transform: uppercase;
        color: orangered;
        font-size: 24px;
        text-align: center;
        margin-bottom: 5px;
        font-weight: bold;
        position: relative;
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
        style="background-color: #3e7946;"  >Dashboard</a
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
        <a href="allUsers" class="redirect-button">Users</a>
        <a href="index.jsp" class="redirect-button" style="background-color: #8f4343;">Logout</a>
      </aside>

      <main>
        <div class="card-outer">
          <div class="card-inner">
            <p class="card-title">Reservations</p>
            <p class="title">Total : 32</p>
            <p class="title">Active : 14</p>
            <p class="title">Completed : 3</p>
            <p class="title">Pending : 7</p>
            <p class="title">Canceled : 8</p>
          </div>
        </div>

        <div class="card-outer">
          <div class="card-inner">
            <p class="card-title">Tables</p>
            <p class="title">Total : 40</p>
            <p class="title">Free : 26</p>
            <p class="title">Booked : 14</p>
          </div>
        </div>
      </main>
    </div>
  </body>
</html>
