<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	font-family: Helvetica, sans-serif;
}
</style>
</head>
<body class="flex items-center justify-center h-screen bg-gray-100">
	<div class="w-full max-w-xs">
		<form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4"
			action="student" method="post">
			<input type="hidden" name="action" value="login">
			<div class="mb-4">
				<label class="block text-gray-700 text-sm font-bold mb-2"
					for="username"> Username </label> <input
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
					id="username" type="text" name="username" placeholder="Username">
			</div>
			<div class="mb-6">
				<label class="block text-gray-700 text-sm font-bold mb-2"
					for="password"> Password </label> <input
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
					id="password" type="password" name="password"
					placeholder="******************">
			</div>
			<div class="flex items-center justify-between">
				<button
					class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
					type="submit">Sign In</button>
				<a
					class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
					href="student_register.jsp"> Register </a>
			</div>
			<div class="mt-4 text-red-500 text-sm">
				<%=request.getParameter("error") != null ? request.getParameter("error") : ""%>
			</div>
		</form>
	</div>
</body>
</html>
