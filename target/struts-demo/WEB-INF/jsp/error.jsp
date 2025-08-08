<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Error</title>
  <style> body { font-family: sans-serif; margin: 2rem; } .error { color: #b00020; } </style>
</head>
<body>
  <h1>Error</h1>
  <div class="error">
    <s:actionerror />
  </div>
  <p><a href="/">Back to home</a></p>
</body>
</html>
