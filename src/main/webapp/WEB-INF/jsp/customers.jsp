<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Customers</title>
  <style>
    body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; margin: 2rem; }
    h1 { margin-bottom: 1rem; }
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #ddd; padding: 8px; }
    th { background: #f5f5f5; text-align: left; }
    tr:nth-child(even) { background: #fafafa; }
    .error { color: #b00020; margin-bottom: 1rem; }
  </style>
</head>
<body>
  <h1>Customers</h1>

  <s:if test="hasActionErrors()">
    <div class="error">
      <s:actionerror />
    </div>
  </s:if>

  <s:if test="customers != null && !customers.isEmpty()">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
        </tr>
      </thead>
      <tbody>
        <s:iterator value="customers">
          <tr>
            <td><s:property value="name"/></td>
            <td><s:property value="email"/></td>
            <td><s:property value="phone"/></td>
          </tr>
        </s:iterator>
      </tbody>
    </table>
  </s:if>
  <s:else>
    <p>No customers found.</p>
  </s:else>
</body>
</html>
