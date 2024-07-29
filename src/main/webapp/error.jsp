<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-red-100">
    <div class="container mx-auto p-8">
        <h1 class="text-2xl font-bold text-red-600">Error</h1>
        <p class="text-red-800">An error occurred: <%= exception.getMessage() %></p>
        <pre class="bg-white p-4 border rounded"><%= exception.getStackTrace() %></pre>
    </div>
</body>
</html>
