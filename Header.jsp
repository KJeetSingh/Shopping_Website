<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
        <style> 
            #cart{float:right;position:absolute;top:8px;right:27%; }
                
            #manage{background:white;height:50px;width:90px;border:1px solid Gray;float:right;position:absolute;top:8px;right:5%; }
                #manage:focus{background:blue}
                #home{background:white;height:50px;width:90px;;border:1px solid gray;float:right;position:absolute;top:8px;right:15%; }
                #home:focus{background:blue}
                
            </style>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script>
            
                $("document").ready(function(){
                    
                    $("#Data_of_cart").load("AddToCart.jsp");
                    
                });
             
         </script>
         <script>
             $("#cart").click(function(){
  $("#Data_of_cart").toggle();
});
        </script>
    </head>
    <body onload="data()">
        <div id="header" style="background:white;text-align:left;height:80px;width:100%;box-shadow:0px 4px 5px gray;position:relative;width:100%">
            <span style="color:#ef342b;font-size:30px">Shopping<br><$>Website</span>
            <img id="cart" src="cart.png" >
            <a href="Manage.html"><button id="manage">MANAGE</button></a><a href="index.html" ><button id="home">HOME</button></a> 
            
        </div>        
        <div id="Data_of_cart"  style="height:30%;width:30%;position:absolute;top:100px;right:10%;display:none;z-index:2;background: gray"></div>
      
        
        
    </body>
</html>
