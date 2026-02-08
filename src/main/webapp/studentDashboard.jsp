<%@ page import="model.IdDetails" %>
<%
    IdDetails s = (IdDetails) request.getAttribute("studentData");
    if (s == null) {
%>
    <h3>No data found</h3>
<%
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<style>
    body {
        font-family: "Segoe UI", Tahoma, sans-serif;
        background: linear-gradient(135deg, #e9eef5, #f7f9fc);
        margin: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h2 {
        margin-bottom: 30px;
        color: #2c3e50;
        font-weight: 600;
    }

    .card-container {
        display: flex;
        gap: 35px;
        margin-bottom: 35px;
        flex-wrap: wrap;
        justify-content: center;
    }

    .card {
        width: 360px;
        background: #ffffff;
        border-radius: 16px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.12);
        overflow: hidden;
    }

    .card h3 {
        margin: 0;
        padding: 16px 20px;
        background: #1F00C2;
        color: #ffffff;
        font-size: 17px;
        font-weight: 600;
    }

    .content {
        padding: 20px;
    }

    .field {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 0;
        border-bottom: 1px dashed #e5e8ef;
        font-size: 14px;
    }

    .field:last-child {
        border-bottom: none;
    }

    .label {
        font-weight: 600;
        color: #555;
    }

    .value {
        color: #2c3e50;
        text-align: right;
        max-width: 55%;
        word-break: break-word;
    }

    .section-title {
        margin: 18px 0 8px;
        font-size: 13px;
        font-weight: bold;
        color: #1F00C2;
        text-transform: uppercase;
        letter-spacing: 0.6px;
    }

    .logout {
        text-align: center;
    }

    .logout a {
        display: inline-block;
        padding: 12px 34px;
        background: #FF2B00;
        color: #fff;
        text-decoration: none;
        border-radius: 30px;
        font-size: 15px;
        font-weight: 600;
        transition: background 0.3s ease;
    }

    .logout a:hover {
        background: #C72300;
    }

    @media (max-width: 800px) {
        .card {
            width: 92%;
        }
    }
</style>

</head>
<body>

<h2>Student Dashboard</h2>

<div class="card-container">

    <!-- PERSONAL + ACADEMIC CARD -->
    <div class="card">
        <h3>Personal Details</h3>
        <div class="content">

            <div class="field"><span class="label">ID</span><span class="value"><%= s.getId() %></span></div>
            <div class="field"><span class="label">Roll No</span><span class="value"><%= s.getRoll_no() %></span></div>
            <div class="field"><span class="label">Name</span><span class="value"><%= s.getName() %></span></div>
            <div class="field"><span class="label">Email</span><span class="value"><%= s.getEmail() %></span></div>
            <div class="field"><span class="label">Mobile</span><span class="value"><%= s.getMobile_no() %></span></div>
            <div class="field"><span class="label">Blood Group</span><span class="value"><%= s.getBlood_group() %></span></div>

            <div class="section-title">Academic Details</div>

            <div class="field"><span class="label">Department</span><span class="value"><%= s.getDepartment() %></span></div>
            <div class="field"><span class="label">Year</span><span class="value"><%= s.getYear() %></span></div>
            <div class="field"><span class="label">Division</span><span class="value"><%= s.getDiv() %></span></div>

        </div>
    </div>

    <!-- ADDRESS CARD -->
    <div class="card">
        <h3>Address Details</h3>
        <div class="content">

            <div class="field"><span class="label">City</span><span class="value"><%= s.getCity() %></span></div>
            <div class="field"><span class="label">Pincode</span><span class="value"><%= s.getPincode() %></span></div>
            <div class="field"><span class="label">State</span><span class="value"><%= s.getState() %></span></div>

        </div>
    </div>

</div>

<!-- LOGOUT BELOW -->
<div class="logout">
    <a href="logout">Logout</a>
</div>

</body>
</html>
