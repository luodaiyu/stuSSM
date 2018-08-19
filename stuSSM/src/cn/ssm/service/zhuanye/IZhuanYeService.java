package cn.ssm.service.zhuanye;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.page.Page;

public interface IZhuanYeService {
	public List<ZhuanYe> selectZhuanYeList(Page page);
	public boolean insertZhuanYe(ZhuanYe zhuanye);
	public ZhuanYe selectZhuanYeByName(String zName);
	public ZhuanYe selectZhuanYeByID(int zid);
	public boolean updateZhuanYe(ZhuanYe zhuanye);
	public boolean deleteZhuanYe(List<String> sList);
	public List<ZhuanYe> selectZhuanYeByxid(int xid);
}

