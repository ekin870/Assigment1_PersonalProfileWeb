<%-- 
    Document   : profile
    Created on : Nov 20, 2026, 5:09:18 PM
    Author     : SMSAINSTUANKUMUNAWIR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Profile Result</title>

    <style>
        body {
            font-family: Californian-FB, sans-serif;
            background: linear-gradient(135deg, #dbeafe, #ede9fe);
            padding: 30px;
        }

        .profile-card {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #4338ca;
        }

        .avatar {
            text-align: center;
            font-size: 55px;
        }

        .info {
            background: #f3f4f6;
            padding: 12px;
            margin: 12px 0;
            border-radius: 7px;
        }

        .label {
            font-weight: bold;
            color: #4338ca;
        }

        a {
            display: block;
            text-align: center;
            background: #4f46e5;
            color: white;
            text-decoration: none;
            padding: 12px;
            border-radius: 7px;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="profile-card">

    <div class="avatar">&#128100;</div>

    <h1>My Personal Profile</h1>

    <p style="text-align:center;">
        Your profile has been successfully submitted!
    </p>

    <div class="info">
        <span class="label">Name:</span>
        ${name}
    </div>

    <div class="info">
        <span class="label">Student ID:</span>
        ${studentID}
    </div>

    <div class="info">
        <span class="label">Program:</span>
        ${program}
    </div>

    <div class="info">
        <span class="label">Email:</span>
        ${email}
    </div>

    <div class="info">
        <span class="label">Hobbies:</span>
        ${hobbies}
    </div>

    <div class="info">
        <span class="label">Self Introduction:</span>
        <p>${introduction}</p>
    </div>

    <a href="index.html">Back to Profile Form</a>

</div>

</body>
</html>