<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Company" %>

<%
ArrayList<Company> companyList =
(ArrayList<Company>)request.getAttribute("companyList");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>View Companies</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background: linear-gradient(to right,#141e30,#243b55);
    min-height:100vh;
}

.card{
    border-radius:20px;
}

h2{
    color:white;
}

</style>

</head>

<body>

<div class="container mt-5">

    <h2 class="text-center mb-4">
        Internship Companies
    </h2>

    <div class="card shadow p-4">

        <table class="table table-striped table-hover">

            <thead class="table-dark">

                <tr>

                    <th>ID</th>
                    <th>Company</th>
                    <th>Role</th>
                    <th>Stipend</th>
                    <th>Location</th>
                    <th>Tech Stack</th>

                </tr>

            </thead>

            <tbody>

            <%
            if(companyList != null){

                for(Company c : companyList){
            %>

                <tr>

                    <td><%= c.getCompanyId() %></td>

                    <td><%= c.getCompanyName() %></td>

                    <td><%= c.getRole() %></td>

                    <td><%= c.getStipend() %></td>

                    <td><%= c.getLocation() %></td>

                    <td><%= c.getTechStack() %></td>

                </tr>

            <%
                }
            }
            %>

            </tbody>

        </table>

        <a href="dashboard.jsp"
        class="btn btn-primary">
        Back To Dashboard
        </a>

    </div>

</div>

</body>
</html>