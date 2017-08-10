package com.brief.po;

public class Brief {
	
        private Integer Bid;
        private String name;
        private String target;
        private String call;
        private String age;
        private String email;
        private String zzmm;
        private String QQ;
        private String height;
        private String  education;
        private String experience;
        private String skills;
        private String self;
        
public Brief(){
	
}

public Brief(String name,String target,String call,String age,String email,String zzmm,String QQ, String height,String  education,String experience,String skills,String self ) {
	    
	    this.name = name;
	    this.target = target;
	    this.call = call;
	    this.age = age;
	    this.zzmm = zzmm;
	    this.QQ = QQ;
	    this.height = height;
	    this.education = education;
	    this.experience = experience;
	    this.skills = skills;
	    this.self = self;
	
}

public Integer getBid() {
	return Bid;
}

public void setBid(Integer bid) {
	Bid = bid;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getTarget() {
	return target;
}

public void setTarget(String target) {
	this.target = target;
}

public String getCall() {
	return call;
}

public void setCall(String call) {
	this.call = call;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getZzmm() {
	return zzmm;
}

public void setZzmm(String zzmm) {
	this.zzmm = zzmm;
}

public String getQQ() {
	return QQ;
}

public void setQQ(String qQ) {
	QQ = qQ;
}

public String getHeight() {
	return height;
}

public void setHeight(String height) {
	this.height = height;
}

public String getEducation() {
	return education;
}

public void setEducation(String education) {
	this.education = education;
}

public String getExperience() {
	return experience;
}

public void setExperience(String experience) {
	this.experience = experience;
}

public String getSkills() {
	return skills;
}

public void setSkills(String skills) {
	this.skills = skills;
}

public String getSelf() {
	return self;
}

public void setSelf(String self) {
	this.self = self;
}


}
