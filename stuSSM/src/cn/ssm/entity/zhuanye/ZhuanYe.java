package cn.ssm.entity.zhuanye;

import cn.ssm.entity.banji.Banji;
import cn.ssm.entity.xueyuan.XueYuan;

public class ZhuanYe {
	private int zid;
	private String zName;
	private XueYuan xueyuan;
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getzName() {
		return zName;
	}
	public void setzName(String zName) {
		this.zName = zName;
	}
	public XueYuan getXueyuan() {
		return xueyuan;
	}
	public void setXueyuan(XueYuan xueyuan) {
		this.xueyuan = xueyuan;
	}
	@Override
	public String toString() {
		return "ZhuanYe [zid=" + zid + ", zName=" + zName + ", xueyuan="
				+ xueyuan + "]";
	}
	
	
}
