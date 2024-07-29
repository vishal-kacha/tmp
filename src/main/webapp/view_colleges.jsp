<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>View Colleges</title>
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
		<h1 class="text-2xl font-bold mb-4">Colleges</h1>
		<div class="overflow-x-auto">
			<table class="min-w-full bg-white">
				<thead class="bg-gray-800 text-white">
					<tr>
						<th class="w-1/3 py-2">Name</th>
						<th class="w-1/3 py-2">Location</th>
						<th class="w-1/3 py-2">Courses Offered</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<College> colleges = (List<College>) request.getAttribute("colleges");
					for (College college : colleges) {
					%>
					<tr>
						<td class="border px-4 py-2"><%=college.getName()%></td>
						<td class="border px-4 py-2"><%=college.getLocation()%></td>
						<td class="border px-4 py-2"><%=college.getCoursesOffered()%></td>
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
