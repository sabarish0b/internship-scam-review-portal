<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="model.ScamReport" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Scam Reports</title>

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

<h1 class="text-center text-danger mb-4">
Scam Reports
</h1>

<div class="card shadow p-4">

<table class="table table-striped">

<thead class="table-danger">

<tr>
    <th>Report ID</th>
    <th>Company</th>
    <th>Reported By</th>
    <th>Reason</th>
</tr>

</thead>

<tbody>

<%

ArrayList<ScamReport> reportList =
(ArrayList<ScamReport>)
request.getAttribute("reportList");

if(reportList != null){

for(ScamReport report : reportList){

%>

<tr>

<td><%= report.getReportId() %></td>

<td><%= report.getCompanyName() %></td>

<td><%= report.getReportedBy() %></td>

<td><%= report.getReason() %></td>

</tr>

<%
}
}
%>

</tbody>

</table>

<a href="dashboard.jsp"
class="btn btn-primary w-100">
Back To Dashboard
</a>

</div>

</div>

</body>
</html>