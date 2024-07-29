<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<title>View Students</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">

<style type="text/css">
body {
	font-family: Helvetica, sans-serif;
}
</style>
</head>
<body class="bg-gray-100">
    <%@ include file="admin_navbar.jsp" %>
	<div class="container mx-auto p-8">
		<h1 class="text-2xl font-bold mb-4">Students</h1>
		<div class="overflow-x-auto">
			<table class="min-w-full bg-white">
				<thead class="bg-gray-800 text-white">
					<tr>
						<th class="w-1/6 py-2">Username</th>
						<th class="w-1/6 py-2">Name</th>
						<th class="w-1/6 py-2">Email</th>
						<th class="w-1/6 py-2">Phone</th>
						<th class="w-1/6 py-2">Address</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Student> students = (List<Student>) request.getAttribute("students");
					for (Student student : students) {
					%>
					<tr>
						<td class="border px-4 py-2"><%=student.getUsername()%></td>
						<td class="border px-4 py-2"><%=student.getName()%></td>
						<td class="border px-4 py-2"><%=student.getEmail()%></td>
						<td class="border px-4 py-2"><%=student.getPhone()%></td>
						<td class="border px-4 py-2"><%=student.getAddress()%></td>
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
