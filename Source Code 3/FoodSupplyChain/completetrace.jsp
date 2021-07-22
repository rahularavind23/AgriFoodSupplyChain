<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>Order Status Tracking</title>



		<link rel="stylesheet" href="css/shipment.css">


	</head>

	<body>

		<%
			Connection connection = null;
			connection = (Connection) getServletContext().getAttribute(
					"connection");
			Statement st = connection.createStatement();
			String selectemo = "select * from shipment where Productid='"
					+ request.getParameter("id") + "'";
			ResultSet rs = st.executeQuery(selectemo);
			
			
			
			int manuid = 0, suppid = 0, cusid = 0, disid = 0;
			if (rs.next()) {

			
				
				manuid = rs.getInt("Manufacture");
				suppid = rs.getInt("Supplier");
				cusid = rs.getInt("Customer");
				disid = rs.getInt("Distributer");
			}
			
		
			
		%>

		<ol class="progtrckr" data-progtrckr-steps="4">

			<%
				if (suppid == 0) {
			%>
			<li class="progtrckr-todo">
				Supplier
			</li>
			<%
				} else {
			%>
			<li class="progtrckr-done">
				Supplier
			</li>
			<%
				}
			%>


			<%
				if (manuid == 0) {
			%>
			<li class="progtrckr-todo">
				Manufacture
			</li>
			<%
				} else {
			%>
			<li class="progtrckr-done">
				Manufacture
			</li>
			<%
				}
			%>

			<%
				if (disid == 0) {
			%>
			<li class="progtrckr-todo">
				Distributor
			</li>
			<%
				} else {
			%>
			<li class="progtrckr-done">
				Distributor
			</li>
			<%
				}
			%>

			<%
				if (cusid == 0) {
			%>
			<li class="progtrckr-todo">
				Customer
			</li>
			<%
				} else {
			%>
			<li class="progtrckr-done">
				Customer
			</li>
			<%
				}
			%>


		</ol>



	</body>

</html>
