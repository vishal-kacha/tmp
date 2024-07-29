<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add College</title>
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

	<!-- Include Navbar -->
	<%@ include file="admin_navbar.jsp"%>

	<div class="container mx-auto p-8">
		<h2 class="text-xl font-bold mb-2">Add College</h2>
		<form action="admin" method="post"
			class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<input type="hidden" name="action" value="addCollege">
			<div class="mb-4">
				<label class="block text-gray-700 text-sm font-bold mb-2" for="name">
					College Name </label> <input
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
					id="name" type="text" name="name" placeholder="College Name">
			</div>
			<div class="mb-4">
				<label class="block text-gray-700 text-sm font-bold mb-2"
					for="location"> Location </label> <input
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
					id="location" type="text" name="location" placeholder="Location">
			</div>
			<div class="mb-4">
				<label class="block text-gray-700 text-sm font-bold mb-2"
					for="coursesOffered"> Courses Offered </label> <input
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
					id="coursesOffered" type="text" name="coursesOffered"
					placeholder="Courses Offered">
			</div>
			<div class="flex items-center justify-between">
				<button
					class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
					type="submit">Add College</button>
			</div>
		</form>
	</div>
</body>
</html>
