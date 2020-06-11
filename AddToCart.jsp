<%@page import="java.util.Iterator"%>
<%@page import="java.io.FileReader"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  String name;int price; Iterator itr;int total=0;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              JSONParser jsonParser = new JSONParser();

        try {
           Object obj = jsonParser.parse(new FileReader("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_name_json.json"));
            JSONArray jsonArray = (JSONArray)obj;
             itr=jsonArray.iterator();       
        }
           catch(Exception ex){}  
                 
            
        
              JSONParser jsonParser2 = new JSONParser();

         try {
          Object obj2 = jsonParser2.parse(new FileReader("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_price_json.json"));
             JSONArray jsonArray2 = (JSONArray)obj2;
           %>
             <div  style="background:yellow;z-index: 1">
              <table style="text-decoration: underline;width:100%">
                  
        <%
            Iterator itr2=jsonArray2.iterator();
    while(itr2.hasNext()){  price=Integer.parseInt(itr2.next().toString()); name= itr.next().toString(); total=total+price;   %>
            <tr >
                      <td><h3><%= name %></h3></td><td><h3><%= price %></h3></td>
             </tr> 
           <%  } %>
                   
              </table> 
           </div>
           <div > <form action="PaymentJSP.jsp"><button style="width:100%"><input type="hidden" value="<%= total%>" name="amount">
          <h3><%="Total = "%><%= total %></h3>
              </button>  </form>
          </div>
       <% }
         catch(Exception ex){}  
            %>    
    </body>
</html>
