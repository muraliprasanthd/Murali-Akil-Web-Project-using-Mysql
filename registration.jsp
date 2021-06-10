<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("Username");
String email=request.getParameter("Email");
String password=request.getParameter("Password");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ambooks","root","****");
Statement st=con.createStatement();
st.executeUpdate("insert into users (name,email,password) values ('"+name+"','"+email+"','"+password+"')");
response.sendRedirect("loginpage.html");
con.close();
	
}

catch(Exception e)
{
        %>
        <script>
        window.alert("invalid username and password");    
        </script>
        <%
        response.sendRedirect("error.html");

}
%>
