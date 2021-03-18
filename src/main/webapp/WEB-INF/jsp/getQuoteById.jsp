<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GetQuoteByID</title>
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
<h1>get quote by id</h1>
<form action="/getQuotationById" method="post" model = "Quote" name="Quote" >
	<div class="form-group">
      <label class="control-label col-sm-2" for="name">Get Quote By Id:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="qId" name ="qId" placeholder="Enter Id" required>
      </div>
    </div>
     <div class="form-row">
     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Get Quote</button>
      </div>
    </div>
    </div>
</form>

  <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <a href="/" class="btn btn-primary">Back</a>
      </div>
    </div>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-12 mx-auto bg-white rounded shadow">
                <!-- Fixed header table-->
                <div class="table-responsive">
<table class="table" style="width:100%">
<thead>
<tr>
<th>Name</th>
<th>Address</th>
<th>Contact Number</th>
<th>Email ID</th>
<th>Insurance Type</th>
<th>Cost</th>
</tr>
</thead>
<tbody>
<tr>
<td>${quotationInfo.name}</td>
<td>${quotationInfo.address}</td>
<td>${quotationInfo.contactNumber}</td>
<td>${quotationInfo.emailId}</td>
<td>${quotationInfo.insuranceType}</td>
<td>${quotationInfo.cost}</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</body>
</html>
