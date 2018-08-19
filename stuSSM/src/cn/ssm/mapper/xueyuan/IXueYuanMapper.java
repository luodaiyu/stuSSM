package cn.ssm.mapper.xueyuan;


import java.util.List;

import org.springframework.stereotype.Repository;



import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.page.Page;

@Repository(value="iXueYuanMapper")
public interface IXueYuanMapper {

	public List<XueYuan> selectXueYuanAll();
	
	public boolean insertXueYuan(XueYuan xueYuan);
	
	public boolean delXueYuan(int xid);
	
	public boolean updateXueYuan(XueYuan xueYuan);
	
	public XueYuan getXueYuanById(int xid);
	
	public int delXueYuans(List<String> xids);

}
