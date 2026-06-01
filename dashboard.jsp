<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
String username =
(String)session.getAttribute("username");

if(username == null){
    response.sendRedirect("login.html");
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Dashboard</title>

<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background: linear-gradient(to right,#141e30,#243b55);
    min-height:100vh;
    color:white;
}

.card{
    border:none;
    border-radius:20px;
    transition:0.3s;
}

.card:hover{
    transform:scale(1.05);
}

.navbar{
    background-color:rgba(0,0,0,0.3);
}

</style>

</head>

<body>

<nav class="navbar navbar-dark px-4">

    <span class="navbar-brand mb-0 h1">
        Internship & Scam Review Portal
    </span>

    <span>
        Welcome, <b><%= username %></b>
    </span>

</nav>

   <%

String msg =
request.getParameter("msg");

if("companyadded".equals(msg)){
%>

<div class="container mt-3">
    <div class="alert alert-success alert-dismissible fade show">
        Company Added Successfully!
        <button type="button"
        class="btn-close"
        data-bs-dismiss="alert"></button>
    </div>
</div>

<%
}
else if("reviewadded".equals(msg)){
%>

<div class="container mt-3">
    <div class="alert alert-success alert-dismissible fade show">
        Review Added Successfully!
        <button type="button"
        class="btn-close"
        data-bs-dismiss="alert"></button>
    </div>
</div>

<%
}
else if("scamreported".equals(msg)){
%>

<div class="container mt-3">
    <div class="alert alert-warning alert-dismissible fade show">
        Scam Report Submitted Successfully!
        <button type="button"
        class="btn-close"
        data-bs-dismiss="alert"></button>
    </div>
</div>

<%
}
%>
<div class="container mt-5">

    <div class="row g-4">

        <div class="col-md-4">

            <div class="card p-4 text-center">

                <h3>Add Company</h3>

                <p>
                Add internship opportunities
                </p>

                <a href="addCompany.jsp"
                class="btn btn-primary">
                Open
                </a>

            </div>

        </div>
        
        <div class="col-md-4">

    <div class="card p-4 text-center">

        <h3>View Companies</h3>

        <p>
        Browse all internship companies
        </p>

        <a href="ViewCompaniesServlet"
        class="btn btn-info">
        Open
        </a>

    </div>

</div>

        <div class="col-md-4">

            <div class="card p-4 text-center">

                <h3>Add Review</h3>

                <p>
                Review your internship experience
                </p>

                <a href="CompanyDropdownServlet"
                class="btn btn-success">
                Open
                </a>
                

            </div>

        </div>
        
        <div class="col-md-4">

    <div class="card p-4 text-center">

        <h3>View Reviews</h3>

        <p>
        Read internship reviews
        </p>

        <a href="ViewReviewsServlet"
        class="btn btn-secondary">
        Open
        </a>

    </div>

</div>

        <div class="col-md-4">

            <div class="card p-4 text-center">

                <h3>Report Scam</h3>

                <p>
                Report fake companies
                </p>

                <a href="reportScam.jsp"
                class="btn btn-danger">
                Open
                </a>

            </div>

        </div>
        <div class="col-md-4">

    <div class="card p-4 text-center">

        <h3>View Scam Reports</h3>

        <p>
        Browse reported scam companies
        </p>

        <a href="ViewScamReportsServlet"
        class="btn btn-danger">
        Open
        </a>

    </div>

</div>

    </div>
    

    <div class="text-center mt-5">

        <a href="LogoutServlet"
        class="btn btn-warning">
        Logout
        </a>

    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>