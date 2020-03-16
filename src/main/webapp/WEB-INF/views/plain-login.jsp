<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Login Page</title>
</head>
<body>
  <h3>Custom Login Page</h3>
  
  <!-- spring security : '/authenticateTheUser' -->
  <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
    
    <!-- Check for login error -->  
    <c:if test="${param.error != null}">    
      <i class="failed">Sorry! You entered invalid username/password.</i>      
    </c:if>
    
    <p>
      User Name : <input type="text" name="username" />
    </p>
    <p>
      Password : <input type="password" name="password" />
    </p>
    <button type="submit">Login</button>
  </form:form>
</body>
</html>