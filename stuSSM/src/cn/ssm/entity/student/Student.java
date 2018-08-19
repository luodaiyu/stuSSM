package cn.ssm.entity.student;

import cn.ssm.entity.banji.Banji;
import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.entity.zhuanye.ZhuanYe;

public class Student {
	private int sid;
	private String sName;
	private String sex;
	private Banji banji;
	private XueYuan xueyuan;
	private ZhuanYe zhuanye;
	private int age;
	private String address;
	private String birthday;
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Banji getBanji() {
		return banji;
	}
	public void setBanji(Banji banji) {
		this.banji = banji;
	}
	public XueYuan getXueyuan() {
		return xueyuan;
	}
	public void setXueyuan(XueYuan xueyuan) {
		this.xueyuan = xueyuan;
	}
	public ZhuanYe getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(ZhuanYe zhuanye) {
		this.zhuanye = zhuanye;
	}
	

}
