<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<script src="https://unpkg.com/htmx.org@2.0.1"
	integrity="sha384-QWGpdj554B4ETpJJC9z+ZHJcA/i59TyjxEPXiiUgN2WmTyV5OEZWCD6gQhgkdpB/"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	font-family: Helvetica, sans-serif;
}
</style>
</head>
<body class="bg-gray-100">
	<%@ include file="admin_navbar.jsp"%>

	<div class="container mx-auto p-8">

		<h1 class="text-2xl font-bold mb-4">Welcome to Admin Dashboard</h1>
		<p class="mb-4">Use the navigation menu to view colleges or
			students.</p>
	</div>
	<div id="main-content" class="container mx-auto p-8"
		hx-get="admin?action=viewHxColleges" hx-trigger="load"
		hx-swap="innerHTML">
		<!-- Default content or placeholder -->
	</div>
</body>
</html>
