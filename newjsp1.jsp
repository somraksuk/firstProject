<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); //เข้ารหัสภาษาไทย %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%!
	private int Counter = 0;
	public java.util.Date showdate()
	{
	 return (new java.util.Date());
	}
     %>
     <p>  วันที่และเวลาในขณะนี้ คือ  <BR>
     <%=showdate()%>
     </p>
     <br><p>ตัวแปร Counter= 
     <%=Counter %>
     </p>
     <br>
     <table border="2">
        <tr>
            <td>วันที่และเวลาในขณะนี้</td>
            <td><%=showdate()%></td>
        </tr> 
        <tr>
            <td>ตัวแปร Counter=</td>
            <td><%=Counter %></td>
        </tr>
    </body>
</html>
