

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String val,name,price; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
           

               <%  val=request.getParameter("val");
         
            System.out.println(val);
         
             if(val==null){
            Class.forName("com.mysql.cj.jdbc.Driver");Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kawaljeet?useSSL=false&allowPublicKeyRetrieval=true","root","root");
        Statement st=con.createStatement(); ResultSet rs= st.executeQuery("select * from shoes");while(rs.next()){String image=rs.getString("image");   %>
            
       
<div style="height:300px;width:84%;float:right;overflow-wrap:break-word;position:relative;top:83px;padding-bottom: 5px">
<img style="padding-top:4px" src=" data:image/jpeg;base64,<%= image.toString()  %>" alt="image" height="200" width="250" />
<h2 style="position:absolute;top:10px; left:300px;font-size:30px"><%= rs.getString("name")%></h2>
<h2 style="position:absolute;top:70px; left:300px;font-size:30px"><span>₹</span><%= rs.getInt("price") %></h2>

<form action="ShoeDescription.jsp" ><input type="hidden" value="<%= rs.getString("name")%>" name="p_name"><button style="position:absolute;top:20px;right:0px;background:greenyellow" name="submit"><strong>VIEW</strong></button></form>
</div>
            
 <% }}
            if(val!=null){
             System.out.println("val is not null");
 Class.forName("com.mysql.cj.jdbc.Driver");Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kawaljeet?useSSL=false&allowPublicKeyRetrieval=true","root","root");
 Statement st=con.createStatement(); ResultSet rs= st.executeQuery("select * from shoes where name like '%"+val+"%' ");
 if(rs!=null){while(rs.next()){ String image=rs.getString("image");  %>
   
<div style="height:370px;width:84%;float:right;overflow-wrap:break-word;position:relative;top:83px;padding-bottom: 5px">
<img style="padding-top:4px" src=" data:image/jpeg;base64,<%= image.toString()  %>" alt="image" height="200" width="250" />
<h2 style="position:absolute;top:10px; left:300px;font-size:30px" ><%= rs.getString("name") %></h2>
<h2 style="position:absolute;top:70px; left:300px;font-size:30px"><span>₹</span><%= rs.getInt("price") %></h2>

<form action="ShoeDescription.jsp" ><input type="hidden" value="<%= rs.getString("name")%>" name="p_name"><button style="position:absolute;top:20px;right:0px;background:greenyellow" name="submit"><strong>VIEW</strong></button></form>
</div>        

 <% }} else{ %>
    <h2>Sorry!! no data by your search</h2>

<% }}
%>
 
    </body>
</html>
