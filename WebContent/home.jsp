<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>OUPP</title>
</head>
<body>

<!--start header -->
<section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="#hero">
            <h1><span>OUPP</span>Restaurant </h1>
          </a>
        </div>
        <div class="nav-list">
          <div class="hamburger">
            <div class="bar"></div>
          </div>
          <ul>
            
            <li><a href="#" data-after="Name">Hi! <% String name = (String)session.getAttribute("name"); %>
            <%= name %></a></li>
            <li><a href="bookingHistory" data-after="history">Booking History</a></li>
            <li><a href="logout" data-after="Logout">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!--end header -->
  <!-- Hero Section  -->
  <section id="hero">
    <div class="hero container">
      <div>
        <h2>Come Hungry, Leave Happy<span></span></h2>
        <h2>Your Restaurant, Your Choice  <span></span></h2>
        <h2>Taste the World Here <span></span></h2>
        <a href="newreservation.jsp" type="button" class="cta">Book Tables</a>
      </div>
    </div>
  </section>
  <!-- End Hero Section  -->
  <script src="./app.js"></script>
</body>
</html>