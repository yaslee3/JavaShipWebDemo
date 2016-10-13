<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.util.*,java.sql.*,javax.sql.*"%>
    <%@ page import = %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
//declare variables
		String url= "xxxxxxxxxxxx";
		String username ="xxxxxxxxxxx";
		String password = "xxxxxxxxxxx";
		String query ="Select * from Roster";
		
//Load and register drive

		Class.forName("com.mysql.jdbc.Driver");
		
		// create connection 
		Connection con =DriverManager.getConnection(url, username, password);
		
		//create statement 
		Statement st = con.createStatement();
		
		//Execute the query (optional)
		 ResultSet rs = st.executeQuery(query);
		
		 //Process the result (optional)
		while (rs.next()){
			
		 String name = rs.getString("name");
		 String course = rs.getString("class");
		 String StudentId=rs.getString("StudentId");
 %>
	<!--  	 System.out.println(name +"\t\t"+ course + "\t\t" + StudentId);-->
		<h2><%=name %></h2> 
		<h3><%=course %></h3> 
		 <h4><%=coolKids %></h4> 
	<% 	 
	//close the connection
		}
		st.close();
		 con.close();
 
		%> 
</body>
</html>