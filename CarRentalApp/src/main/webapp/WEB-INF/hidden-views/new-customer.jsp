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
<div class="col-sm-8 col-md-8 my-auto">
<c:choose>
<c:when test="${requestScope.controllerAction == 'UPDATE'}">
<h1 class="display-2">Updatefddsdd customer</h1>
</c:when>
<c:otherwise>
<h1 class="display-2">Nedadsadaddasdsw customer</h1>
</c:otherwise>
</c:choose>
<div class="bs-callout bs-callout-default">
<c:choose>
<c:when test="${requestScope.controllerAction == 'UPDATE'}">
<form class="form-signin" action="updateCustomer" method="post">
</c:when>
<c:otherwise>
<form class="form-signin" action="addCustomer" method="post">
</c:otherwise>
</c:choose>
<input value="${requestScope.customer.firstName}" name="inputFirstName" type="text" class="form-control" placeholder="First name:" required>
<input value="${requestScope.customer.lastName}" name="inputLastName" type="text" class="form-control" placeholder="Last name:" required>
<c:choose>
<c:when test="${requestScope.controllerAction == 'CORRECT'}">
<input value="${requestScope.customer.pesel}" pattern=".{11,11}" name="inputPesel" type="text" class="form-control is-invalid" placeholder="Pesel:" required>
<small id="passwordHelp" class="text-danger">User with provided pesel already exists</small>  
</c:when>
<c:otherwise>
<input value="${requestScope.customer.pesel}" pattern=".{11,11}" name="inputPesel" type="text" class="form-control" placeholder="Pesel:" required>
<small id="passwordHelp">Pesel should consists of 11 characters</small> 
</c:otherwise>
</c:choose> 
<input type="hidden" name="pesel" value="${requestScope.customer.pesel}"> 
<c:choose>
<c:when test="${requestScope.controllerAction == 'UPDATE'}">
<button name="controllerAction" value = "update" class="btn btn-lg btn-primary btn-block" type="submit">Update customer</button>
</c:when>
<c:otherwise>
<button name="controllerAction" value = "add" class="btn btn-lg btn-primary btn-block" type="submit">Add customer</button>
</c:otherwise>
</c:choose>  
</form>
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
