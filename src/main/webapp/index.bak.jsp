<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>College Admission Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-8">
        <h1 class="text-4xl font-bold mb-6 text-center">Welcome to the College Admission Portal</h1>
        <div class="flex flex-col items-center">
            <div class="mb-4">
                <a href="admin_login.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Admin Login
                </a>
            </div>
            <div class="mb-4">
                <a href="student_login.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Student Login
                </a>
            </div>
            <div class="mb-4">
                <a href="student_register.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Student Registration
                </a>
            </div>
            <div class="mb-4">
                <a href="admin?action=viewColleges" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                    View Colleges
                </a>
            </div>
            <div class="mb-4">
                <a href="admin?action=viewStudents" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                    View Students
                </a>
            </div>
            <div class="mb-4">
                <a href="student?action=viewApplications&studentId=<%= session.getAttribute("studentId") %>" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                    View Applications
                </a>
            </div>
        </div>
    </div>
</body>
</html>
