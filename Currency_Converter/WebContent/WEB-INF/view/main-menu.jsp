<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Currency Converter</title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"  >

    <style>
       .tab1{
        padding: 20px;
        margin:20px 20px;
        margin-top: 40px;
       }

       .main{
        margin: 0 auto;
        width: 50%;
        margin-top: 40px;
       }

       ul li{
        width: 50%;
        text-align: center;
       }

       .mynav{
        height: 60px;
       }

       .head{
        color: white;
        font-weight: bolder;
        line-height: 50px;
        font-size: 20px; 
        margin: 0 auto; 
       }
       
		.su{
			margin: 5px auto;
		}

    </style>

  </head>
   <body>

    <nav class="navbar navbar-dark bg-dark mynav">
          <div class="head">---  CURRENCY CONVERTER  ---</div>
    </nav>

  <div class="container main">

    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
        </li>
        
    </ul>
<div class="tab-content" id="myTabContent">

  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

    <div class="container tab1">
    <form action="processForm" method="post">
    <div class="form-group">
           
            <div class="row">
            
            <div class="col-3">From:</div>
            <div class="col-9">
            	<select name="fromName" >
                <option value="USD">United States Dollars</option>
                <option value="INR">Indian Rupees</option>
                <option value="BGN">Bulgerian lev</option>
                <option value="NZD">New Zealand Dollar</option>
                <option value="RUB">Russian Ruble</option>
                <option value="CNY">Chinese yuan</option>
                <option value="CZK">Czech Koruna</option>
                <option value="SEK">Swedish krona</option>
            </select>
            </div>
            
           
    		</div>
    		     
            <br>
                 
            <div class="row">
            <div class="col-3">
            	To: 
            </div>
            <div class="col-9">
            	<select name="toName" >
                <option value="USD">United States Dollars</option>
                <option value="INR">Indian Rupees</option>
                <option value="BGN">Bulgerian lev</option>
                <option value="NZD">New Zealand Dollar</option>
                <option value="RUB">Russian Ruble</option>
                <option value="CNY">Chinese yuan</option>
                <option value="CZK">Czech Koruna</option>
                <option value="SEK">Swedish krona</option>
            </select>
            
            </div>
            
   				&ensp; &ensp;
            
            </div>
            <div class="row">
    			<div class="col-3">
    				Input value:
    			</div>
    			<div class="col-9">
      					<input type="text" class="form-control" name="ip1" required>
    			</div>
    		</div>
    		 
				   		<input class="button btn-success su" type="Submit" value="Convert">
			
    		
        </div>    
        </form>
           Value is : ${message}
           
  </div>
  </div>
 
  
</div>
</div>

        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

    </body>
</html>
