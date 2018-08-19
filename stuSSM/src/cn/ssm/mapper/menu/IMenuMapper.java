package cn.ssm.mapper.menu;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.menu.Menu;
import cn.ssm.page.Page;
@Repository(value="iMenuMapper")
public interface IMenuMapper {

	public List<Menu> selectMenuByRID(int rid);
	
	public List<Menu> selectMenuAll(Page page);
	
	public boolean delMenu(int id);
	
	public boolean addMenu(Menu menu);
	
	public Menu getMenuById(int id);
	
	public boolean updateMenu(Menu menu);
	
	public int delMenus(List<String> ids);
	
}
