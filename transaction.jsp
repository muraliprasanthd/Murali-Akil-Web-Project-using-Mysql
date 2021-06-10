<%@ page import="java.sql.*"%>
<%
String Name1=request.getParameter("Name");
String Book1=request.getParameter("Book");
String Address1=request.getParameter("Address");
String PhoneNumber1=request.getParameter("PhoneNumber");
String pincode1=request.getParameter("Pincode");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ambooks","root","****");
Statement st=con.createStatement();
st.executeUpdate("insert into customers (name,book,address,phonenumber,pincode) values ('"+Name1+"','"+Book1+"','"+Address1+"','"+PhoneNumber1+"','"+pincode1+"')");
response.sendRedirect("deliverypage.html");

	
}

catch(Exception e)
{
        %>
        <script>
        window.alert("Some problem had occured");    
        </script>
        <%


}
%>





