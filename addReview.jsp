<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Company" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Review</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:linear-gradient(to right,#141e30,#243b55);
    min-height:100vh;
}

.card{
    border-radius:20px;
    border:none;
}

.form-control,
.form-select{
    border-radius:10px;
}

.btn{
    border-radius:10px;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card shadow-lg p-4">

<h2 class="text-center mb-4">
Add Internship Review
</h2>

<form action="AddReviewServlet" method="post">

<div class="mb-3">

</div>

<div class="mb-3">
 <label class="form-label">
Select Company
</label>

<select name="companyid"
class="form-select"
required>

<option value="">
Choose Company
</option>

<%

ArrayList<Company> companyList =
(ArrayList<Company>)
request.getAttribute("companyList");

if(companyList != null){

    for(Company company : companyList){

%>

<option value="<%= company.getCompanyId() %>">

<%= company.getCompanyName() %>

</option>

<%
    }
}
%>

</select>

<div class="mb-3">
<label class="form-label">User Name</label>
<input type="text"
name="username"
class="form-control"
placeholder="Enter your name"
required>
</div>

<div class="mb-3">
<label class="form-label">Rating</label>

<select name="rating"
class="form-select"
required>

<option value="">
Select Rating
</option>

<option value="1">
⭐ 1 Star
</option>

<option value="2">
⭐⭐ 2 Stars
</option>

<option value="3">
⭐⭐⭐ 3 Stars
</option>

<option value="4">
⭐⭐⭐⭐ 4 Stars
</option>

<option value="5">
⭐⭐⭐⭐⭐ 5 Stars
</option>

</select>

</div>

<div class="mb-3">

<label class="form-label">
Review
</label>

<textarea
name="reviewtext"
class="form-control"
rows="4"
placeholder="Share your internship experience..."
required></textarea>

</div>

<button type="submit"
class="btn btn-success w-100">
Submit Review
</button>

<a href="dashboard.jsp"
class="btn btn-secondary w-100 mt-2">
Back To Dashboard
</a>

</form>

</div>

</div>

</div>

</div>

</body>
</html>