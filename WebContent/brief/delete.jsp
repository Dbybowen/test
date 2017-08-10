<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,com.brief.po.*,com.brief.dao.*,com.brief.db.*,java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete brief</title>
</head>
<body>
<%
     Conndb conn = new Conndb();
     String id = request.getParameter("id");
     try{
    	 String sql = "delete from brief where Bid='"+id+"'";
    	 int result = conn.doUpdate(sql);
    	 if(result !=0){
    		    out.println("<font size=4pt color=red >删除成功！！！</font>");
    		    response.setHeader("msg","3;url=Allbief.jsp");
    	 }else{
    		 out.println("<font size=4pt color=red >删除失败！！！</font>");
 		    response.setHeader("msg","3;url=Allbief.jsp");
    	 }
     }catch(Exception e){
    	 out.println("<script> alert('错误提示："+e.getMessage()+"');window.histoty.back();</script>");

     }finally{
    	 conn.closeConnection();
     }


%>
</body>
</html>