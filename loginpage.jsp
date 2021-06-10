<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page import="java.sql.*"%>
<%
String Email=request.getParameter("Email");
String password=request.getParameter("Password");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ambooks","root","3783");
Statement st=con.createStatement();
ResultSet rs= st.executeQuery("select * from users where email='"+Email+"'");

if(rs.next())
{
if(rs.getString(3).equals(password))
{
response.sendRedirect("index.html");
con.close();
}
else
{

%>
<script>
window.alert("invalid username and password");    
</script>
<%
    
out.println("invalid username and password");
}
}

}
catch(Exception e)
{       

        %>
        <script>
        window.alert("invalid usernamesdfsdf and password");    
        </script>
        <%
         response.sendRedirect("error.html");

}
%>
