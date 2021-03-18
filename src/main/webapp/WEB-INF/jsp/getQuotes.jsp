<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.table-fixed tbody
{
    height: 300px;
    overflow-y: auto;
    width: 100%;
}

.table-fixed thead,
.table-fixed tbody,
.table-fixed tr,
.table-fixed td,
.table-fixed th {
    display: block;
}

.table-fixed tbody td,
.table-fixed tbody th,
.table-fixed thead > tr > th {
    float: left;
    position: relative;

    &::after {
        content: '';
        clear: both;
        display: block;
    }
}

body {
    background: #34495E;
    background: -webkit-linear-gradient(to right, #34495E, #AEB6BF);
    background: linear-gradient(to right, #34495E, #AEB6BF);
    min-height: 100vh;

}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body>
get all quotes

<!-- For demo purpose -->
<div class="container text-center text-white">
    <div class="row pt-5">
        <div class="col-lg-8 mx-auto">
            <a href="/getAllQuotes" class="btn btn-primary">Get all quotes</a>
<br>
<br>
<a href="/" class="btn btn-primary">Back</a>
<br>
<br>
        </div>
    </div>
</div><!-- End -->
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-12 mx-auto bg-white rounded shadow">
            <div class="table-responsive">
<table  style="width:100%">
<thead>
<tr>
<th>Name</th>
<th>Address</th>
<th>Contact Number</th>
<th>Email Id</th>
<th>Insurance Type</th>
<th>Cost</th>
</tr>
</thead>
<tbody>
<c:forEach var="qInfo" items="${quotationInfo}" >
<tr>
<td>${qInfo.name}</td>
<td>${qInfo.address}</td>
<td>${qInfo.contactNumber}</td>
<td>${qInfo.emailId}</td>
<td>${qInfo.insuranceType}</td>
<td>${qInfo.cost}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</div>
</div>
</body>
</html>
