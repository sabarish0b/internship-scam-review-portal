<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Company</title>

<link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background: linear-gradient(to right,#0f2027,#203a43,#2c5364);
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

        <div class="col-md-6">

            <div class="card shadow p-4">

                <h2 class="text-center mb-4">
                Add Internship Company
                </h2>

<form action="AddCompanyServlet"
method="post">

    <div class="mb-3">

      



    </div>

    <div class="mb-3">

        <label>
        Company Name
        </label>

        <input type="text"
        name="companyname"
        class="form-control">

    </div>

    <div class="mb-3">

        <label>
        Role
        </label>

        <input type="text"
        name="role"
        class="form-control">

    </div>

    <div class="mb-3">

        <label>
        Stipend
        </label>

        <input type="number"
        name="stipend"
        class="form-control">

    </div>

    <div class="mb-3">

        <label>
        Location
        </label>

        <input type="text"
        name="location"
        class="form-control">

    </div>

    <div class="mb-3">

        <label>
        Tech Stack
        </label>

        <input type="text"
        name="techstack"
        class="form-control">

    </div>

    <button type="submit"
    class="btn btn-primary w-100">
    Add Company
    </button>

</form>

            </div>

        </div>

    </div>

</div>

</body>
</html>