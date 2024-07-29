<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>College Admission Portal</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
<style>
body {
	font-family: Helvetica, sans-serif;
}
.carousel-inner {
	display: flex;
	overflow: hidden;
}

.carousel-item {
	min-width: 100%;
	transition: transform 0.5s ease-in-out;
}
</style>
</head>
<body class="bg-gray-50">

<nav class="bg-gray-800 p-4 shadow-lg">
    <div class="container mx-auto flex justify-between items-center">
        <div class="text-white text-2xl font-bold">EasyNroll</div>
        <div class="space-x-4">
            <a href="index.jsp" class="text-gray-300 hover:text-white transition duration-300">Home</a>
            <a href="admin_login.jsp" class="text-gray-300 hover:text-white transition duration-300">Admin Login</a>
            <a href="student_login.jsp" class="text-gray-300 hover:text-white transition duration-300">Student Login</a>
            <a href="about.jsp" class="text-gray-300 hover:text-white transition duration-300">About</a>
            <a href="contact.jsp" class="text-gray-300 hover:text-white transition duration-300">Contact</a>
        </div>
    </div>
</nav>

<!-- Carousel -->
<div class="container mx-auto mt-8">
	<img
		src="https://placehold.co/1200x500/005f73/ffffff?text=Welcome+to+EasyNroll+College+Admission+Portal"
		class="w-full rounded-lg shadow-2xl mix-blend-darken shadow-black">
</div>

<!-- Tailwind CSS Script -->
<script
	src="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.js"></script>

</body>
</html>