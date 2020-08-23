<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/ihover.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<jsp:include page="/WEB-INF/fragments/navbar.jsp" />
<!-- Navbar -->

<!-- Content -->
<div class="d-flex justify-content-center align-items-center container h-100">
<div class="col-sm-10 col-md-10 my-auto">
<h1 class="display-2 text-center">Select action</h1>
<br>
<div class="row">
<div class="ih-item circle effect1" style="margin-left: 150px">
  <a href="printCars?controllerAction=rent">
  <div class="spinner"></div>
    <div class="img">
      <img src="buttons/RentCar.png" alt="img" width="520" height="520">
    </div>
    <div class="info">
      <h3>Rent car</h3>
      <p>Rent passenger/light commercial car</p>
    </div>
  </a>
</div>
<div class="ih-item circle effect1" style="margin-left: 190px">
  <a href="printCars?controllerAction=return">
  <div class="spinner"></div>
    <div class="img d-flex">
      <img src="buttons/ReturnCar.png" alt="img">
    </div>
    <div class="info">
      <h3>Return car</h3>
      <p>Return passenger/light commercial car</p>
    </div>
  </a>
</div>
</form>
</div>
</div>
</div>  
<!-- 
<div class="d-flex justify-content-center align-items-center container h-100">
<div class="col-sm-8 col-md-8 my-auto">
<h1 class="display-2">Select action</h1>
<div class="bs-callout bs-callout-default">
<form class="form-signin" action="printCars" method="get">        
<button class="btn btn-lg btn-primary btn-block" name="controllerAction" value="rent" type="submit">Rent car</button>
<button class="btn btn-lg btn-primary btn-block" name="controllerAction" value="return" type="submit">Return car</button>
</form>
</div>
</div>
</div>  
-->   
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
