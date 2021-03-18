<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sales Processing</title>
<style>
body {
    background: #34495E;
    background: -webkit-linear-gradient(to right, #34495E, #AEB6BF);
    background: linear-gradient(to right, #34495E, #AEB6BF);
    min-height: 100vh;

 

}
label{
color:white;
}
h2{
text-align:center;
}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

 

</head>
<body>
<div class="container" style="margin-top:40px">
  <h2>Save a quote</h2>
<form class="form-horizontal" action="/saveQuotations" method="post" model = "Quote" name="Quote" >
     <div class="form-row">
         <div class="form-group">
             <label class="control-label col-sm-2" for="name"><b>Name</b></label>
             <div class="col-sm-10"> 
                 <input type="text" class="form-control"  name="name" placeholder="Enter Name" required>
             </div>
         </div>
        </div>
           <div class="form-row">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="address"><b>Address</b></label>
                 <div class="col-sm-10"> 
                  <input type="text" class="form-control"  name="address" placeholder="Enter Address" required>
                </div>
                </div>
        </div>
           <div class="form-row">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="contactNumber"><b>Contact Number</b></label>
                  <div class="col-sm-10"> 
                  <input type="text" class="form-control"  name="contactNumber" pattern="(7|8|9)\d{9}$" placeholder="Enter Contact Number" required>
                </div>
                </div>
        </div>
         <div class="form-row">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="emailId"><b>Email Id</b></label>
                  <div class="col-sm-10"> 
                  <input type="text" class="form-control"  name="emailId" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}"  placeholder="Enter Email Id" required>
                </div>
                </div>
        </div>
         <div class="form-row">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="insuranceType"><b>Insurance Type</b></label>
                  <div class="col-sm-10"> 
                  <input type="text" class="form-control"  name="insuranceType" placeholder="Enter Insurance Type" required>
                </div>
                </div>
        </div> 
        <div class="form-row">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="cost"><b>Cost</b></label>
                  <div class="col-sm-10"> 
                  <input type="number" class="form-control"  name="cost" placeholder="Enter Cost" required>
                </div>
        </div>
        </div>
        <div class="form-row">
                <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" id="button"class="btn btn-primary">Save Quote</button>
                </div>
                </div>
        </div>
         <div class="form-row">
                <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                <a href="/" class="btn btn-primary">Back</a>
                </div>
                </div>
        </div>
</form>
</div>
</body>
</html>