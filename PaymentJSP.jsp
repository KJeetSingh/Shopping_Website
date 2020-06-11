<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String amount; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script>
            
                $("document").ready(function(){
                    
                    $("#frame").load("Header.jsp");
                    
                });
             
        </script>  
    </head>
    <body>
        <%  amount = request.getParameter("amount"); %>
        
    <div id="frame" style="z-index: 1;background:white;text-align:left;height:80px;width:100%;box-shadow:0px 0px 2px gray;position:fixed;"></div>
    
    <div class="container" style="position:absolute;top:120px;left:190px">
    <div class="row">
        <div class="col-xs-12 col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                    <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    EXPIRY DATE</label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span >₹</span><%=amount%></span> Final Payment</a>
                </li>
            </ul>
            <br/>
            <a href="#" class="btn btn-success btn-lg btn-block" role="button">Pay</a>
        </div>
    </div>
</div>
  
  <footer>
        <pre style="background-color:gray;position:absolute;bottom:0px;width:100%" >
Creator: Kawaljeet Singh
Contact: +91 0987654321                 
Description: This demo shopping web application facilitates users to choose among different variety of  products related to clothing.
             On every product page there are filters to get the products according to the brand name or by the price range under which they
             want the product. A add-to-cart feature is added to make the product buying more easy.</pre>
            
            
        </footer>   
    </body>
</html>
