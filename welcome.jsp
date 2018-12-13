<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); //เข้ารหัสภาษาไทย %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome JSP Page</title>
  <link href="foldercss/newcss.css" rel="stylesheet" />
    </head>
    <body>
    <%! 
       String name1;
       String sex1;
       int age1;
       String status="";
    %>
    <%
    try{
        name1= request.getParameter("name");
        sex1 = request.getParameter("sex");
        age1= Integer.parseInt(request.getParameter("age"));
        out.print("คุณชื่อ:"+name1+"<br>" ); 
        out.print("คุณอายุ:"+age1+"...ปี..."); 
        if(age1<=10){
            status="เป็นเด็ก";
        }
        else if(age1<=50){
            status="ยังหนุ่ม";
        }
        else{
            status="แก่แล้ว";
        }
        out.print("คุณ"+status+"<br>"); 
        out.print("คุณเพศ:"+sex1+"<br>"); 
    }
    catch(Exception e1){
    out.print("..พบข้อผิดพลาด.."+e1);         
    }
    %> 
    <p> 
    <table border="2">
        <tr>
            <td>คุณชื่อ</td>
            <td><%=name1%></td>
        </tr> 
        <tr>
            <td>คุณอายุ</td>
            <td><%=age1 %>ปี</td>
            <td>คุณ <%=status %></td>
        </tr>
        <tr>
            <td>คุณเพศ</td>
            <td><%=sex1 %></td>
        </tr>
    </body>
</html>
