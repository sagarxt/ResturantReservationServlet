<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Login & Signup Form</title>
    <link rel="stylesheet" href="style1.css" />
  </head>
  <body >
    <section class="wrapper">
      <div class="form signup">
        <header>Signup</header>
        <form action="register" method="post">
          <input type="text" name="name" placeholder="Full name" required />
          <input type="text" name="email" placeholder="Email address" required />
          <input type="text" name="phoneNumber" placeholder="Phone number" required />
          <input type="password" name="password" placeholder="Password" required />
          <div class="checkbox">
            <input type="checkbox" id="signupCheck" required />
            <label for="signupCheck">I accept all terms & conditions</label>
          </div>
          <input type="submit" value="Signup" />
        </form>
      </div>

      <div class="form login">
        <header>Login</header>
        <form action="login" method="post">
          <input type="text" name="email" placeholder="Email address" required />
          <input type="password" name="password" placeholder="Password" required />
          <a href="#">Forgot password?</a>
          <input type="submit" value="Login" />
        </form>
      </div>

      <script>
        const wrapper = document.querySelector(".wrapper"),
          signupHeader = document.querySelector(".signup header"),
          loginHeader = document.querySelector(".login header");

        loginHeader.addEventListener("click", () => {
          wrapper.classList.add("active");
        });
        signupHeader.addEventListener("click", () => {
          wrapper.classList.remove("active");
        });
      </script>
    </section>
  </body>
</html>