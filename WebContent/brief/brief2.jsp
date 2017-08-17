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
	<form id=form1 name="form1" action="BriefServlet?op=update&id=<%=id%>"
		method="post">
		<%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%>

		<div id="box">
			<div id="haed">
				<img src="imges/head.png" width="1100" height="172" />
			</div>
			<div id="con">
				<div class="img">
					<img src="imges/dt_bg.png" width="184" height="45" />
				</div>


				<span><div>个人信息</div></span>
				<div id="inf">
					<div id="name" class="tion" contenteditable="true">
						姓名：<input name="name" value="<%=b.getName()%>">
					</div>
					<div id="target" class="tion" contenteditable="true">
						求职目标：<input name="target" value="<%=b.getTarget()%>">
					</div>
					<div id="call" class="tion2" contenteditable="true">
						电 话：<input name="call" value="<%=b.getCall()%>">
					</div>
					<div id="age" class="tion" contenteditable="true">
						年龄：<input name="age" value="<%=b.getAge()%>">
					</div>
					<div id="email" class="tion2" contenteditable="true">
						邮箱：<input name="email" value="<%=b.getEmail()%>">
					</div>
					<div id="zzmm" class="tion" contenteditable="true">
						政治面貌：<input name="zzmm" value="<%=b.getZzmm()%>">
					</div>
					<div id="QQ" class="tion2" contenteditable="true">
						QQ：<input name="QQ" value="<%=b.getQQ()%>">
					</div>
					<div id="height" class="tion" contenteditable="true">
						身高：<input name="height" value="<%=b.getHeight()%>">
					</div>
				</div>
				<div class="img">
					<img src="imges/dt_bg.png" width="184" height="45" />
				</div>
				<span><div>教育背景</div></span>
				<div id="education" contenteditable="true">
					<input name="education" value="<%=b.getEducation()%>">
				</div>
				<div class="img">
					<img src="imges/dt_bg.png" width="184" height="45" />
				</div>
				<span><div>项目经验</div></span>
				<div id="experience" contenteditable="true">
					<input name="experience" value="<%=b.getExperience()%>">
				</div>
				<div class="img">
					<img src="imges/dt_bg.png" width="184" height="45" />
				</div>
				<span><div>个人技能</div></span>
				<div id="skills" contenteditable="true">
					<input name="skills" value="<%=b.getSkills()%>">
				</div>
				<div class="img">
					<img src="imges/dt_bg.png" width="184" height="45" />
				</div>
				<span><div>自我评价</div></span>
				<div id="self" contenteditable="true">
					<input name="self" value="<%=b.getSelf()%>">
				</div>
			</div>
			<div id="footer">
				<input class="button" type="submit" value="保存" />
	</form>
	<a href="Allbrief2.jsp"> <input name="check" type="submit"
		value="查看所有" onclick="window.location.href('Allbrief2.jsp')" /></a>
	</div>
	</div>

</body>
</html>