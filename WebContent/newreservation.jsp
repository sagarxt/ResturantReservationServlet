<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>OUPP-Offbeat Underground Pub and Party</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

</head>

<style>
    /********** Template CSS **********/
:root {
    --primary: #fea116;
    --light: #F1F8FF;
    --dark: #0F172B;
}

.fw-medium {
    font-weight: 500 !important;
}

.fw-semi-bold {
    font-weight: 600 !important;
}

.back-to-top {
    position: fixed;
    display: none;
    right: 45px;
    bottom: 45px;
    z-index: 99;
}
/*** Button ***/
.btn {
    font-weight: 500;
    text-transform: uppercase;
    transition: .5s;
}

.btn.btn-primary,
.btn.btn-secondary {
    color: #FFFFFF;
}

.btn-square {
    width: 38px;
    height: 38px;
}

.btn-sm-square {
    width: 32px;
    height: 32px;
}

.btn-lg-square {
    width: 48px;
    height: 48px;
}

.btn-square,
.btn-sm-square,
.btn-lg-square {
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: normal;
    border-radius: 2px;
}
/*** Section Title ***/
.section-title {
    position: relative;
    display: inline-block;
}

.section-title::before {
    position: absolute;
    content: "";
    width: 45px;
    height: 2px;
    top: 50%;
    left: -55px;
    margin-top: -1px;
    background: var(--primary);
}

.section-title::after {
    position: absolute;
    content: "";
    width: 45px;
    height: 2px;
    top: 50%;
    right: -55px;
    margin-top: -1px;
    background: var(--primary);
}

.section-title.text-start::before,
.section-title.text-end::after {
    display: none;
}
</style>

<Style>
*,
*::before,
*::after {
    box-sizing: border-box
}

body {
    margin: 0;
    font-family: "Heebo", sans-serif;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #666565;
    background-color: #F1F8FF;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.container,
.container-xxl {
    width: 100%;
    padding-right: var(--bs-gutter-x, .75rem);
    padding-left: var(--bs-gutter-x, .75rem);
    margin-right: auto;
    margin-left: auto
}
@media (min-width: 1400px) {
.container,
.container-xxl {
    max-width: 1320px
}
}

@media (min-width: 576px) {

.container {
    max-width: 540px
}
}

@media (min-width: 768px) {

.container {
    max-width: 720px
}
}

@media (min-width: 992px) {

.container {
    max-width: 960px
}
}

@media (min-width: 1200px) {

.container {
    max-width: 1140px
}
}

.p-0 {
    padding: 0 !important
}

.py-5 {
    padding-top: 3rem !important;
    padding-bottom: 3rem !important
}

.text-center {
    text-align: center !important
}

.text-primary {
    color: #cb2b2b !important
}

.text-uppercase {
    text-transform: uppercase !important
}

.row {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: calc(var(--bs-gutter-y) * -1);
    margin-right: calc(var(--bs-gutter-x) / -2);
    margin-left: calc(var(--bs-gutter-x) / -2)
}

.row>* {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) / 2);
    padding-left: calc(var(--bs-gutter-x) / 2);
    margin-top: var(--bs-gutter-y)
}

.g-5,
.gx-5 {
    --bs-gutter-x: 3rem
}

.g-5,
.gy-5 {
    --bs-gutter-y: 3rem
}

@media (min-width: 992px){
.col-lg-6 {
        flex: 0 0 auto;
        width: 50%
}
}

.g-3,
.gx-3 {
    --bs-gutter-x: 1rem
}

.g-3,
.gy-3 {
    --bs-gutter-y: 1rem
}

.col-6 {
    flex: 0 0 auto;
    width: 50%
}

.text-start {
    text-align: left !important
}

.text-end {
    text-align: right !important
}

.img-fluid {
    max-width: 100%;
    height: auto
}

.rounded {
    border-radius: 2px !important
}

.w-75 {
    width: 75% !important
}

@media (min-width: 768px){
.col-md-6 {
        flex: 0 0 auto;
        width: 50%
}
}

.form-floating {
    position: relative
}

.form-floating>.form-control,
.form-floating>.form-select {
    height: calc(3.5rem + 2px);
    padding: 1rem .75rem
}

.form-floating>label {
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    padding: 1rem .75rem;
    pointer-events: none;
    border: 1px solid transparent;
    transform-origin: 0 0;
    transition: opacity 0.1s ease-in-out, transform 0.1s ease-in-out
}

@media (prefers-reduced-motion: reduce) {
    .form-floating>label {
        transition: none
    }
}

.form-floating>.form-control::placeholder {
    color: transparent
}

.form-floating>.form-control:focus,
.form-floating>.form-control:not(:placeholder-shown) {
    padding-top: 1.625rem;
    padding-bottom: .625rem
}

.form-floating>.form-control:-webkit-autofill {
    padding-top: 1.625rem;
    padding-bottom: .625rem
}

.form-floating>.form-select {
    padding-top: 1.625rem;
    padding-bottom: .625rem
}

.form-floating>.form-control:focus~label,
.form-floating>.form-control:not(:placeholder-shown)~label,
.form-floating>.form-select~label {
    opacity: .65;
    transform: scale(0.85) translateY(-0.5rem) translateX(0.15rem)
}

.form-floating>.form-control:-webkit-autofill~label {
    opacity: .65;
    transform: scale(0.85) translateY(-0.5rem) translateX(0.15rem)
}

.input-group {
    position: relative;
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    width: 100%
}

.form-control {
    display: block;
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #666565;
    background-color: #fff;
    background-clip: padding-box;
    border: 2px solid #cb2b2b;
    appearance: none;
    border-radius: 20px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out
}

@media (prefers-reduced-motion: reduce) {
    .form-control {
        transition: none
    }
}

.form-control[type="file"] {
    overflow: hidden
}

.form-control[type="file"]:not(:disabled):not(:read-only) {
    cursor: pointer
}

.form-control:focus {
    color: #666565;
    background-color: #fff;
    border-color: #cb2b2b;
    outline: 0;
    box-shadow: 0 0 0 .25rem rgba(254, 22, 22, 0.25)
}

.form-control::-webkit-date-and-time-value {
    height: 1.5em
}

.form-control::placeholder {
    color: #6c757d;
    opacity: 1
}

.form-control:disabled,
.form-control:read-only {
    background-color: #e9ecef;
    opacity: 1
}

.col-12 {
    flex: 0 0 auto;
    width: 100%
}

.form-select {
    display: block;
    width: 100%;
    padding: .375rem 2.25rem .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #666565;
    background-color: #fff;
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23343a40' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M2 5l6 6 6-6'/%3e%3c/svg%3e");
    background-repeat: no-repeat;
    background-position: right .75rem center;
    background-size: 16px 12px;
    border: 2px solid #cb2b2b;
    border-radius: 20px;
    appearance: none
}

.form-select:focus {
    border-color: #cb2b2b;
    outline: 0;
    box-shadow: 0 0 0 .25rem rgba(254, 22, 22, 0.25)
}

.form-select[multiple],
.form-select[size]:not([size="1"]) {
    padding-right: .75rem;
    background-image: none
}

.form-select:disabled {
    background-color: #e9ecef
}

.btn {
    display: inline-block;
    font-weight: 400;
    line-height: 1.5;
    color: #666565;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    border-radius: 10px;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out
}

@media (prefers-reduced-motion: reduce) {
    .btn {
        transition: none
    }
}

.btn:hover {
    color: #666565
}

.btn-primary {
    color: #000;
    background-color: #cb2b2b;
    border-color: #cb2b2b
}

.btn-primary:hover {
    color: #000;
    background-color: #ddff00;
    border-color: #ddff00;
}


</Style>

<body>
    <div class="container-xxl p-0">
        <!-- Booking Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center">
                    <h3 class="text-center text-primary text-uppercase">------Table Booking------</h3>
                    <h1 class="mb-5">Book A <span class="text-primary text-uppercase">Luxury Table</span></h1>
                </div>
                <div class="row g-5">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75" src="img/about-1.jpg" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100" src="img/about-2.jpg">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-50" src="img/about-3.jpg">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75" src="img/about-4.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class=" #cb2b2b">
                            <form action="newReservation" method="post">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input name="customerName" type="text" class="form-control" id="name" placeholder="Your Name">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input name="phoneNumber" type="text" class="form-control" id="email" placeholder="Your Email" pattern="[0-9]{10}" title="Enter a phone number of 10 digits">
                                            <label for="phoneNumber">Your Phone Number</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating" id="date3" data-target-input="nearest">
                                            <input name="date" type="date" class="form-control" id="dateInput" placeholder="Check In" data-target="#date3" data-toggle="datetimepicker" />
                                            <label for="checkin">Booking Date</label>
                                        </div>
                                        <script>
									        // Get today's date and set it as the minimum date for the input field
									        const today = new Date().toISOString().split('T')[0];
									        document.getElementById("dateInput").setAttribute("min", today);
									    </script>
	                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating" id="date4" data-target-input="nearest">
                                            <input name="time" type="time" class="form-control" id="checkout" placeholder="Check Out" data-target="#date4" data-toggle="datetimepicker" />
                                            <label for="checkout">Booking Time</label>
                                        </div>
                                    </div>
                                   
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <select class="form-select" id="select3" name="partySize">
                                              <option value="2">Couple (2 persons)</option>
                                              <option value="4">Family and Friends (4 persons)</option>
                                              <option value="6">Family and Friends (6 persons)</option>
                                              <option value="10">Family and Friends (10 persons)</option>
                                              <option value="20">Party (20 persons)</option>
                                              <option value="30">Party (30 persons)</option>
                                              <option value="50">Party (50 persons)</option>
                                            </select>
                                            <label for="select3">Table</label>
                                          </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Book Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>