<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>

<!--start header -->
<section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="#hero">
            <h1><span>OUPP</span>Resturant </h1>
          </a>
        </div>
        <div class="nav-list">
          <div class="hamburger">
            <div class="bar"></div>
          </div>
          <ul>
            <li><a href="#contact" data-after="Contact">Contact</a></li>
            <li><a href="logout.jsp" data-after="Logout">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!--end header -->
  <style>
table, th, td {
  border:1px solid black;
}
table,th {
  height: 50px;
}

</style>
<table class="size" style="margin-top:70px; margin-left:30px; width:90%" >
  <tr>
    <th>Customer Name</th>
    <th>Phone Number</th>
    <th>Party Type</th>
    <th>Date</th>
    <th>Time</th>
    <th>Reservation Id</th>
    <th>Edit</th>
    <th>cancel</th>
  </tr>
 
</table>
 
  <script src="./app.js"></script>
</body>
</html>