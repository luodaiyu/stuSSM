package cn.ssm.entity.banji;

import cn.ssm.entity.xueyuan.XueYuan;

public class Banji {
	
	private int bid;
	private String bname;
	private XueYuan xueyuan;
	private int bcapacity;
	private int bnop;
	
	public int getBcapacity() {
		return bcapacity;
	}
	public void setBcapacity(int bcapacity) {
		this.bcapacity = bcapacity;
	}
	public int getBnop() {
		return bnop;
	}
	public void setBnop(int bnop) {
		this.bnop = bnop;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public XueYuan getXueyuan() {
		return xueyuan;
	}
	public void setXueyuan(XueYuan xueyuan) {
		this.xueyuan = xueyuan;
	}
	

}
