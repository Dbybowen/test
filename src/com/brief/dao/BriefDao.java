package com.brief.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.brief.db.Conndb;
import com.brief.po.Brief;

public class BriefDao {

	public static Conndb conn = new Conndb();

	public Brief findById(Integer Bid) {
		String sql = "select * from brief where Bid=" + Bid;
		try {
			Brief b = new Brief();
			ResultSet rs = conn.doQuery(sql);
			if (rs.next()) {
				b.setBid(rs.getInt("Bid"));
				b.setName(rs.getString("name"));
				b.setTarget(rs.getString("target"));
				b.setCall(rs.getString("call"));
				b.setAge(rs.getString("age"));
				b.setEmail(rs.getString("email"));
				b.setQQ(rs.getString("QQ"));
				b.setZzmm(rs.getString("zzmm"));
				b.setHeight(rs.getString("height"));
				b.setEducation(rs.getString("education"));
				b.setExperience(rs.getString("experience"));
				b.setSkills(rs.getString("skills"));
				b.setSelf(rs.getString("self"));
				return b;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return null;
	}

	public List<Brief> findall() {
		String sql = "select * from brief order by Bid desc";
		List<Brief> list = new ArrayList<Brief>();
		try {
			ResultSet rs = conn.doQuery(sql);
			while (rs.next()) {
				Brief brief = findById(rs.getInt("Bid"));
				list.add(brief);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return list;
	}

	public int update(Brief brief) {
		String sql = "update brief set name='" + brief.getName() + "',target='" + brief.getTarget() + "',call='"
				+ brief.getCall() + "',age='" + brief.getAge() + "',email='" + brief.getEmail() + "',zzmm='"
				+ brief.getZzmm() + "',QQ='" + brief.getQQ() + "',height='" + brief.getHeight() + "',education='"
				+ brief.getEducation() + "',experience='" + brief.getExperience() + "',skills='" + brief.getSkills()
				+ "',self='" + brief.getSelf() + "' where Bid=" + brief.getBid();
		 System.out.println(sql);
		 try {
			 int result = conn.doUpdate(sql);
			 return result;
		 }catch(Exception e) {
			 e.printStackTrace();
		 }finally {
			 conn.closeConnection();
		 }
		return 0;
	}

}
