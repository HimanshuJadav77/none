<%-- 
    Document   : InsertData
    Created on : Oct 22, 2024, 9:28:16 PM
    Author     : JADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" 
import="java.sql.*"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Insert Record</title> 
    </head> 
    <body> 
        <% 
             try{ 
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/college", "root", ""); 
                Statement st=con.createStatement(); 
                String r,s,c; 
                r=request.getParameter("txtRlno"); 
                s=request.getParameter("txtName"); 
                c=request.getParameter("txtCity"); 
                String qry="Insert into student values("+r+",'"+s+"','"+c+"')"; 
                int rows = st.executeUpdate(qry); 
                out.println(rows+ "<b> Record(s) Inserted</b><br>"); 
                st.close(); 
                con.close(); 
            }catch(Exception e){ 
                e.printStackTrace(); 
            }  
        %> 
    </body> 
</html> 