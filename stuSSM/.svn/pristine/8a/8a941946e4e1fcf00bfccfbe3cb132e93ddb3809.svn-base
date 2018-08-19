package cn.ssm.mapper.zhuanye;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.page.Page;

@Repository(value="iZhuanYeMapper")
public interface IZhuanYeMapper {
	
	public List<ZhuanYe> selectZhuanYeList(Page page);
	public int insertZhuanYe(ZhuanYe zhuanye);
	public ZhuanYe selectZhuanYeByName(String zName);
	public ZhuanYe selectZhuanYeByID(int zid);
	public int updateZhuanYe(ZhuanYe zhuanye);
	public int deleteZhuanYe(List<String> slist);
	public List<ZhuanYe> selectZhuanYeByxid(int xid);
}
