<%@page import="pack.Shoes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,org.hibernate.cfg.Configuration, java.io.IOException,
java.io.*,
java.sql.*,javax.imageio.ImageIO,
java.util.*,java.awt.image.BufferedImage,
javax.servlet.ServletException,
javax.servlet.annotation.WebServlet,
javax.servlet.http.HttpServlet,
javax.servlet.http.HttpServletRequest,
javax.servlet.http.HttpServletResponse" %>

<%! String name=null; ResultSet rs;String f_name; String f_price  ;int i=1,l;String price; ArrayList desc; ArrayList image; int start=1,end=6; String query; %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css_f_shoes.css" type="text/css" />
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script>
            
                $("document").ready(function(){
                    
                    $("#frame").load("Header.jsp");
                    
                });
             
        </script>
        
        <style>input:focus{ outline: none !important; }</style>
    </head>
    <body style="margin:2px;margin-top: 0px;margin-bottom: 2px" onload="Data_on_load()" >
               
              

<!--  navigation bar -->          
<div id="frame" style="z-index: 1;background:white;text-align:left;height:80px;width:100%;box-shadow:0px 0px 2px gray;position:fixed;"></div>       

<!--  filter -->
<div style="position:fixed; float:left; height:100%;width:15%;background:white;margin-top:83px"><br><br>
            <h5 style="font-family:Comic Sans MS"><strong>Product Name</strong></h5>
            <input type="text"  id="f_name" onkeyup="func()" style="border-radius:10px;box-shadow:-1px -1px aqua;height:20px;width:180px" >
</div>

<!-- product list -->
<div id="output" ></div>


 <script>
 function func(){   
       var f_name = document.getElementById("f_name").value;
                    var url="ShoesData.jsp?val="+f_name;
                    var request=new XMLHttpRequest();
                    request.onreadystatechange=function(){if(request.readyState==4){document.getElementById("output").innerHTML=request.responseText;}}
                    request.open("POST",url,true);
                    request.send();
          
    }
    function Data_on_load(){
             var url="ShoesData.jsp";
                    var request=new XMLHttpRequest();
                    request.onreadystatechange=function(){if(request.readyState==4){document.getElementById("output").innerHTML=request.responseText;}}
                    request.open("POST",url,true);
                    request.send();
                                       
          
          
                };               
  
  </script>
  
          
</body>
</html>
