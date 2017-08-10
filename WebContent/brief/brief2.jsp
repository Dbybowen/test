<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,com.brief.po.*,com.brief.dao.*,com.brief.db.*,java.sql.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="briefCss.css">
<%
	String id = request.getParameter("id");
	BriefDao BD = new BriefDao();
	Brief b = BD.findById(Integer.parseInt(id));
%>
</head>
<body>
 <form id=form1 name="form1"  action="BriefServlet?op=update&id=<%=id %>" method=post enctype="multipart/form-data">
	<%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%>

	<div id="box">
		<div id="haed">
			<img src="imges/head.png" width="1100" height="172" />
		</div>
		<div id="con">
			<div class="img">
				<img src="imges/dt_bg.png" width="184" height="45" />
			</div>
			<%-- <input type="hidden" name=id value=<%=recipes.getRtitle() %> /> --%>

			<span><div>个人信息</div></span>
			<div id="inf">
				<div id="name" class="tion" contenteditable="true">
					姓名：<%=b.getName()%></div>
				<div id="target" class="tion" contenteditable="true">
					求职目标：<%=b.getTarget()%></div>
				<div id="call" class="tion2" contenteditable="true">
					电 话：<%=b.getCall()%></div>
				<div id="age" class="tion" contenteditable="true">
					年龄：<%=b.getAge()%></div>
				<div id="email" class="tion2" contenteditable="true">
					邮箱：<%=b.getEmail()%></div>
				<div id="zzmm" class="tion" contenteditable="true">
					政治面貌：<%=b.getZzmm()%></div>
				<div id="QQ" class="tion2" contenteditable="true">
					QQ：<%=b.getQQ()%></div>
				<div id="height" class="tion" contenteditable="true">
					身高：<%=b.getHeight()%></div>
			</div>
			<div class="img">
				<img src="imges/dt_bg.png" width="184" height="45" />
			</div>
			<span><div>教育背景</div></span>
			<div id="education" contenteditable="true"><%=b.getEducation()%></div>
			<div class="img">
				<img src="imges/dt_bg.png" width="184" height="45" />
			</div>
			<span><div>项目经验</div></span>
			<div id="experience" contenteditable="true"><%=b.getExperience()%></div>
			<div class="img">
				<img src="imges/dt_bg.png" width="184" height="45" />
			</div>
			<span><div>个人技能</div></span>
			<div id="skills" contenteditable="true"><%=b.getSkills()%></div>
			<div class="img">
				<img src="imges/dt_bg.png" width="184" height="45" />
			</div>
			<span><div>自我评价</div></span>
			<div id="self" contenteditable="true"><%=b.getSelf()%></div>
		</div>
		<div id="footer">
			<input class="button" type="submit" value="保存" /> 
			<a href="Allbrief2.jsp">
			<input name="check" type="submit" value="查看所有" onclick="window.location.href('Allbrief2.jsp')" /></a>
		</div>
	</div>
   </form>
</body>
</html>