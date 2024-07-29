<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact - College Admission Portal</title>
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

	<nav class="bg-gray-800 p-4 shadow-lg">
		<div class="container mx-auto flex justify-between items-center">
			<div class="text-white text-2xl font-bold">College Admission
				Portal</div>
			<div class="space-x-4">
				<a href="index.jsp"
					class="text-gray-300 hover:text-white transition duration-300">Home</a>
				<a href="admin_login.jsp"
					class="text-gray-300 hover:text-white transition duration-300">Admin
					Login</a> <a href="student_login.jsp"
					class="text-gray-300 hover:text-white transition duration-300">Student
					Login</a> <a href="about.jsp"
					class="text-gray-300 hover:text-white transition duration-300">About</a>
				<a href="contact.jsp"
					class="text-gray-300 hover:text-white transition duration-300">Contact</a>
			</div>
		</div>
	</nav>


	<!-- Contact Section -->
	<div class="container mx-auto mt-8 p-8 bg-white shadow rounded">
		<h1 class="text-3xl font-bold mb-4">Contact Us</h1>
		<form action="submit_contact.jsp" method="post" class="space-y-4">
			<div>
				<label for="name" class="block text-gray-700 font-semibold">Name</label>
				<input type="text" id="name" name="name"
					class="w-full mt-2 p-2 border border-gray-300 rounded">
			</div>
			<div>
				<label for="email" class="block text-gray-700 font-semibold">Email</label>
				<input type="email" id="email" name="email"
					class="w-full mt-2 p-2 border border-gray-300 rounded">
			</div>
			<div>
				<label for="message" class="block text-gray-700 font-semibold">Message</label>
				<textarea id="message" name="message"
					class="w-full mt-2 p-2 border border-gray-300 rounded"></textarea>
			</div>
			<div>
				<button type="submit"
					class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>
