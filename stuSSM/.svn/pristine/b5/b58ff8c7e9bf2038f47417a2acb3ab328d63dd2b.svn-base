package cn.ssm.mapper.banji;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.banji.Banji;
import cn.ssm.page.Page;

@Repository(value="iBanjiMapper")
public interface IBanjiMapper {
	
	public List<Banji> selectAll(Page page);
	
	public Banji getBanjiBYid(int id);
	
	public int deleteBanjiBYid(int id);
	
	public int deleteBanji(List<String> list);
	
	public Banji getBanjiBYname(Banji bj);
	 
	public int insertBanji(Banji bj);
	
	public int updateBanji(Banji bj);

	public List<Banji> selectBanjiByXid(int xid);
}
