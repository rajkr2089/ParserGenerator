<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<html>
<head>
<title>Welcome to  Parser xml gnerator</title>

<script type="text/javascript"></script>

	<%
		 HashMap<String, String> methodNameMap	=	new HashMap<String, String>();
		 methodNameMap.put("account", "Account");
		 methodNameMap.put("bulletAcount", "Bullet Acount");
		 methodNameMap.put("expiryDate", "Expiry Date");
		 methodNameMap.put("contractSymbol", "Contract Symbol");
		 
		 HashMap<String, String> parserMethodDataType	=	new HashMap<String, String>();		 
		 parserMethodDataType.put("Date", "Date");
		 parserMethodDataType.put("String", "String");
		 parserMethodDataType.put("Integer", "Integer");
		 parserMethodDataType.put("Decimal", "Double");
		  
	%>
</head>
<body>
	<table>
		<tr>
			<td>Parser Name</td>
			<td><input type="text"></input></td>
		</tr>
	</table>
	<table>
		<tr>
			<th>Parser method name</th>
			<th>ready file column index</th>
			<th>Data type</th>
			<th>default value</th>
			<th>complex logic</th>
		</tr>
		
		<%
			for(String parserMethod : methodNameMap.keySet()){
		%>
			<tr>
				<td><input type="<%=parserMethod%>" value="<%=methodNameMap.get(parserMethod)%>"></td>
				<td><input type="text"></td>
				<td>
					<select name="dataType">
						<%
							for(String methodDataType : parserMethodDataType.keySet()){
						%>
								<option value="<%=methodDataType%>" ><%=parserMethodDataType.get(methodDataType) %></option>
						<%	}%>
					</select>
				</td>
				<td><input type="text"></td>
				<td><input type="text"></td>
			</tr>
		
		<%	}%>
	</table>
</body>
</html>