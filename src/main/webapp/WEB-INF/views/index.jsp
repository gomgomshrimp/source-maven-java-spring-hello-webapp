<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Hello World</title>
</head>
<body>
<h1>${msg}</h1>
<h2>Today is <fmt:formatDate value="${today}" pattern="yyyy-MM-dd"/></h2>
<h3>Version: 1.2</h3>
<h3>Image Version: maven-web-app:v0.2-ansible</h3>
</body>
</html>
