<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #99ffff;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }

        .center {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #444;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
        }

        button[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #00ffff;
            border: none;
            border-radius: 8px;
            color: black;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #00ffff;
        }
    </style>
</head>
<body>

    <div class="center">
        <h1>Student Form</h1>
        <form action="/submit" method="post">
            <label for="name">Name</label>
            <input type="text" name="name"  placeholder="Enter Your Name"required />

            <label for="dept">Department</label>
            <input type="text" name="dept" placeholder="Your depatrment"required />

            <label for="dob">Date of Birth</label>
            <input type="date" name="dob" placeholder="Enter DOB"required />

            <label for="district">District</label>
            <input type="text" name="district" placeholder="Your district" required />

            <label for="age">Age</label>
            <input type="text" name="age" placeholder=" Your Age" required />

            <!--button type="submit">Submit</button -->
            
            <div style="display: flex; justify-content: space-between; gap: 10px;">
    <button type="submit" style="flex: 1;">Submit</button>
    <a href="/students" style="flex: 1; text-align: center; padding: 12px; background-color:  #00ffff; color: black; border-radius: 8px; text-decoration: none; font-size: 16px; display: inline-block;">
        View Students
    </a>
</div>
            
           
           
        </form>
    </div>

</body>
</html>
