<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <%! String name; String image; int price; String desc; int stock;%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script>
            
                $("document").ready(function(){
                    
                    $("#frame").load("Header.jsp");
                    
                });
             
        </script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%  name=request.getParameter("p_name"); %>
        
       <div id="frame" style="z-index: 1;background:white;text-align:left;height:80px;width:100%;box-shadow:0px 0px 2px gray;position:relative;"></div> 
        
       <%  
          
           Class.forName("com.mysql.cj.jdbc.Driver");Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kawaljeet?useSSL=false&allowPublicKeyRetrieval=true","root","root");
 Statement st=con.createStatement(); ResultSet rs= st.executeQuery("select * from shirts where name like '%"+name+"%' ");
 if(rs!=null){while(rs.next()){
     image=rs.getString("image");  name=rs.getString("name"); price=rs.getInt("price"); desc=rs.getString("Description"); stock=rs.getInt("stock");
 
 }}  
%>
       <div style="width:100%;height:500px;border:2px solid black">
           <img style="padding-top:18px;padding-left:45px " src=" data:image/jpeg;base64,<%= image.toString()  %>" alt="image" height="350" width="350" />            
           <div style="height:47px;width:auto;position:absolute; top:100px;left:40%;border:2px solid black;border-radius:5px ">
               <pre style="color:green;font-size:18px;text-transform:uppercase"><b><%= name%></b></pre></div>  
           <h1 style="position:absolute;top:150px;left:40%;border:2px solid black;border-radius:5px;color:green">₹<%=price%></h1>
           <p style="position:absolute;top:210px;left:40%;border:2px solid black;border-radius:5px;color:green;padding:-2px"><%=desc%></p>
           <div style="box-shadow:2px 2px 3px gray;background:blue;position:absolute;top:460px;left:40%;border-radius:5px;height:40px;width:170px;text-align:center" onclick="func()">
               <i  style="color:white;font-size:25px" class="fa fa-cart-plus" aria-hidden="true">Add-To-Cart</i></div>
           <a href="PaymentJSP.jsp?amount=<%=price%>">    <div style="box-shadow:2px 2px 3px gray;background:blue;position:absolute;top:460px;left:60%;border-radius:5px;height:40px;width:170px;text-align:center">
               <i  style="color:white;font-size:25px" class="fa fa-shopping-bag" aria-hidden="true">BUY</i></div></a>
           
       </div>
       
       <footer>
        <pre style="color:black" >
Creator: Kawaljeet Singh
Contact: +91 0987654321                 
Description: This demo shopping web application facilitates users to choose among different variety of  products related to clothing.
             On every product page there are filters to get the products according to the brand name or by the price range under which they
             want the product. A add-to-cart feature is added to make the product buying more easy.</pre>
                   
        </footer>
           // add to cart code
                         <script>
                    function func(){
                    alert("alert")
                    var url="JSONWrite.jsp?name="+"<%=name%>"+"&price="+"<%=price%>";
                    var request=new XMLHttpRequest();
                    request.onreadystatechange=function(){if(request.readyState==4){document.getElementById("output").innerHTML=request.responseText;}}
                    request.open("GET",url,true);
                    request.send();
                }
                         </script>
           
    </body>
</html>
