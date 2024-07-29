<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-8">
        <h1 class="text-2xl font-bold mb-4">Student Dashboard</h1>
        <div class="mb-4">
            <a href="student?action=viewColleges" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                View Colleges
            </a>
            <a href="student?action=viewApplications&studentId=<%= session.getAttribute("studentId") %>" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                View Applications
            </a>
        </div>
    </div>
</body>
</html>
