<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Table Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    form {
      width: 30%;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
      border-radius: 8px;
      text-align: center;
    }

    h1 {
      color: #333;
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="number"],
    select {
      width: calc(100% - 20px);
      padding: 8px;
      margin: 6px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<form>
  <h1>Add New Table</h1>
  <input type="text" name="table_no" placeholder="Table Number"><br>
  <input type="number" name="capacity" placeholder="Capacity"><br>
  <select name="available">
    <option value="true" selected>True</option>
    <option value="false">False</option>
  </select><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
