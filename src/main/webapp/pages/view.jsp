<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Students</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eaf6f6;
            margin: 0;
            padding: 40px;
            text-align: center;
        }

        h1 {
            font-size: 34px;
            color: #37474F;
            margin-bottom: 30px;
        }

        table {
            width: 95%;
            margin: auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px 16px;
            font-size: 16px;
            border-bottom: 1px solid #e0f7fa;
        }

        th {
            background-color: #b2ebf2;
            color: #004d40;
        }

        tr:nth-child(even) {
            background-color: #f1fdfd;
        }

        tr:hover {
            background-color: #e0f7fa;
        }

        .action-btn {
            padding: 8px 14px;
            margin: 2px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .edit-btn {
            background-color: #aed581;
            color: #1b5e20;
        }

        .edit-btn:hover {
            background-color: #c5e1a5;
        }

        .delete-btn {
            background-color: #ef9a9a;
            color: #b71c1c;
        }

        .delete-btn:hover {
            background-color: #ffcdd2;
        }

        .logout-btn {
            margin-top: 30px;
            padding: 12px 22px;
            background-color: #80deea;
            color: #004d40;
            font-size: 16px;
            border-radius: 8px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #b2ebf2;
        }
    </style>
</head>
<body>

    <h1>Student Records</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Date of Birth</th>
                <th>District</th>
                <th>Age</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="s" items="${students}">
                <tr>
                    <td>${s.rollno}</td>
                    <td>${s.name}</td>
                    <td>${s.dept}</td>
                    <td>${s.dob}</td>
                    <td>${s.district}</td>
                    <td>${s.age}</td>
                    <td>
                        <a href="/students/edit/${s.rollno}" class="action-btn edit-btn">Update</a>
                        <a href="/students/delete/${s.rollno}" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/login" class="logout-btn">Log Out</a>

</body>
</html>
