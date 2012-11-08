<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<f:view>
<%@ page isErrorPage="true" %>  
    <html lang="en">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<link href="styles.css" rel="stylesheet" type="text/css">
		</head>
		<body>
			<div class="errorMessage"><%= exception.getLocalizedMessage() %></div>
			<pre class="errorStackTrace">
			<%
				java.io.CharArrayWriter cw = new java.io.CharArrayWriter();
				java.io.PrintWriter pw = new java.io.PrintWriter(cw, true);
				exception.printStackTrace(pw);
				out.println(cw.toString());
			%>
			</pre>
		</body>
    </html>
</f:view>