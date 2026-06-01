<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Report Scam</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:linear-gradient(to right,#141e30,#243b55);
    min-height:100vh;
}

.card{
    border-radius:20px;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card shadow p-4">

<h2 class="text-center mb-4 text-danger">
Report Scam Company
</h2>

<form action="ReportScamServlet"
method="post">

<div class="mb-3">

<label>Report ID</label>

<input type="number"
name="reportid"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Company Name</label>

<input type="text"
name="companyname"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Reported By</label>

<input type="text"
name="reportedby"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Reason</label>

<textarea
name="reason"
rows="4"
class="form-control"
required></textarea>

</div>

<button type="submit"
class="btn btn-danger w-100">
Submit Report
</button>

</form>

</div>

</div>

</div>

</div>

</body>
</html>