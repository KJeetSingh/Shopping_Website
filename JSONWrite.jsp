<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.io.FileReader"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! String name;int price; %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        name=request.getParameter("name");
        price=Integer.parseInt(request.getParameter("price"));
        
                JSONParser jsonParser = new JSONParser();

        try {
           Object obj = jsonParser.parse(new FileReader("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_name_json.json"));
            JSONArray jsonArray = (JSONArray)obj;
           
            jsonArray.add(name);
            System.out.println(jsonArray);
            FileWriter file = new FileWriter("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_name_json.json");
            file.write(jsonArray.toJSONString());
            file.flush();
            file.close();
            
            
           Object obj2 = jsonParser.parse(new FileReader("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_price_json.json"));
            JSONArray jsonArray2 = (JSONArray)obj2;
            jsonArray2.add(price);
            FileWriter file2 = new FileWriter("C:/Users/Dell/Documents/NetBeansProjects/mainproject/web/Add_T_C_p_price_json.json");
            file2.write(jsonArray2.toJSONString());
            file2.flush();
            file2.close();
            
        }catch(Exception e){}
                

    %>
    
    </body>
</html>
