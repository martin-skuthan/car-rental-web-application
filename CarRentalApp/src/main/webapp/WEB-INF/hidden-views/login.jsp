<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<jsp:include page="/WEB-INF/fragments/navbar.jsp" />
<!-- Navbar -->

<!-- Content -->
<div class="d-flex justify-content-center align-items-center container h-100">
<div class="col-sm-6 col-md-6 my-auto">
<h1 class="display-2">Log in</h1>
<div class="bs-callout bs-callout-default">
<form class="form-signin" action="j_security_check" method="post">
<input name="j_username" type="text" class="form-control" placeholder="Username" required autofocus>
<input name="j_password" type="password" class="form-control" placeholder="Password" required>
<button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
</form>
Please find below login credentials:<br>
<ul>
  <li>Login : admin</li>
  <li>Password: admin</li>
</ul>
</div>
</div>
</div>   
<!-- Content -->

<!-- Footer -->
<jsp:include page="/WEB-INF/fragments/footer.jsp" />
<!-- Footer -->

<!-- Bootstrap js -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!-- Bootstrap js -->

</body>
</html>
