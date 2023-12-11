<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Reservation Canceled</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

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

.btn-outline-primary {
    color: #cb2b2b;
}

.btn-outline-primary:hover {
    color: #ffffff;
    background-color: #cb2b2b;
    border-color: #cb2b2b
}

</style>

<body>
   
        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="/"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <span class="fs-4 text-uppercase" style="color: red; font-weight: 500;">OUPP</span><span class="fs-4 text-uppercase" style="font-weight: 500;"> RESTURANT</span>
                </a>
                  <div class="col-md-4 text-end">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="#" class="nav-link px-2 text-secondary">Hi! <% String name = (String)session.getAttribute("name"); %>
            <%= name %></a></li>
                        <a href="bookingHistory"><button type="button" class="btn btn-outline-primary me-2">Booking History</button></a>
                        <a href="logout"><button href="logout" type="button" class="btn btn-primary">Log out</button></a>
                    </ul>
                </div>
            </header>
        </div>
        <div class="container-xxl p-0">
        <!-- Booking Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center">
                    <img src="/img/Successful.jpg" alt="404" style="height: 200px; width: 200px;">
                    <h3>Booking Canceled</h3><br>
                </div><br>
                <div class=" col-md-4 mb-2 justify-content-center">
                    <a href="home.jsp"><button href="home.jsp" class="btn btn-primary w-100 py-3" style="margin-left: 420px;" type="submit">Home</button></a>
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
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>