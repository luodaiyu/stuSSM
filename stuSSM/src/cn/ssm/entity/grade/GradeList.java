package cn.ssm.entity.grade;

public class GradeList {
	private int sid;
	private int tid;
	private String sName;
	private String sex;
	private String kec;
	private Double chengji;
	private String bName;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
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
	public String getKec() {
		return kec;
	}
	public void setKec(String kec) {
		this.kec = kec;
	}
	public Double getChengji() {
		return chengji;
	}
	public void setChengji(Double chengji) {
		this.chengji = chengji;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	
}
