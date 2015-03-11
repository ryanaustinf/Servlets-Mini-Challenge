<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Color Preferences</title>
		<style>
			body {
				font-family:Arial;
				background-color:<%=request.getSession().getAttribute("bg") %>;
			}
			
			#mainContent {
				text-align:center;
				padding:10px;
				width:750px;
				margin:auto;
				background-color:<%=request.getSession().getAttribute("pc") %>;
				color:<%=request.getSession().getAttribute("fc") %>;
			}
		</style>
	</head>
	<body>
		<%!
			String[] colors = new String[]{"black","white","red","yellow","green","blue"}; 
		%>
		<div id="mainContent">
			<%
				String bg = request.getSession().getAttribute("bg").toString();
				String fc = request.getSession().getAttribute("fc").toString();
				String pc = request.getSession().getAttribute("pc").toString();
			%>
			<form action="posts">
				<p>Choose your preferred theme</p>
				<table>
					<tr>
						<td class="right">Background Color:</td>
						<td>
							<select name="bg">
								<% 
									for( String s: colors ) {
								%>
								<option value=<%=s %> <%=bg.equals(s) ? "selected" : ""%>><%=s %></option>
								<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td class="right">Background Color:</td>
						<td>
							<select name="pc">
								<% 
									for( String s: colors ) {
								%>
								<option value=<%=s %> <%=pc.equals(s) ? "selected" : ""%>><%=s %></option>
								<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td class="right">Font Color:</td>
						<td>
							<select name="fc">
								<% 
									for( String s: colors ) {
								%>
								<option value=<%=s %> <%=fc.equals(s) ? "selected" : ""%>><%=s %></option>
								<%
									}
								%>
							</select>
						</td>
					</tr>
				</table>
				<div id="submitContainer">
					<input type="submit" value="Submit" />
				</div>
			</form>
		</div>
	</body>
</html>