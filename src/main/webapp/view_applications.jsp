<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Applications</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-8">
        <h1 class="text-2xl font-bold mb-4">Applications</h1>
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white">
                <thead class="bg-gray-800 text-white">
                    <tr>
                        <th class="w-1/4 py-2">Application ID</th>
                        <th class="w-1/4 py-2">Student ID</th>
                        <th class="w-1/4 py-2">College ID</th>
                        <th class="w-1/4 py-2">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Application> applications = (List<Application>) request.getAttribute("applications");
                        for (Application application2 : applications) {
                    %>
                    <tr>
                        <td class="border px-4 py-2"><%= application2.getId() %></td>
                        <td class="border px-4 py-2"><%= application2.getStudentId() %></td>
                        <td class="border px-4 py-2"><%= application2.getCollegeId() %></td>
                        <td class="border px-4 py-2"><%= application2.getStatus() %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
