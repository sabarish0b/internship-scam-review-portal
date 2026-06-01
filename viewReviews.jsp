<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Review" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>View Reviews</title>

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

table{
    background:white;
}

</style>

</head>

<body>

<div class="container mt-5">

<h1 class="text-center text-white mb-4">
Internship Reviews
</h1>

<div class="card shadow p-4">

<table class="table table-striped">

<thead class="table-dark">

<tr>
    <th>Review ID</th>
    <th>Company ID</th>
    <th>User</th>
    <th>Rating</th>
    <th>Review</th>
</tr>

</thead>

<tbody>

<%

ArrayList<Review> reviewList =
(ArrayList<Review>)
request.getAttribute("reviewList");

if(reviewList != null){

for(Review review : reviewList){

%>

<tr>

<td><%= review.getReviewId() %></td>

<td><%= review.getCompanyId() %></td>

<td><%= review.getUsername() %></td>

<td><%= review.getRating() %>/5</td>

<td><%= review.getReviewText() %></td>

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