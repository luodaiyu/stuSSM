package cn.ssm.service.menu;

import java.util.List;

import cn.ssm.entity.menu.Menu;
import cn.ssm.page.Page;

public interface IMenuService {

	public List<Menu> selectMenuByRID(int rid);
	
	public List<Menu> selectMenuAll(Page page);
	
	public boolean delMenu(int id);
	
	public boolean addMenu(Menu menu);
	
	public Menu getMenuById(int id);
	
	public boolean updateMenu(Menu menu);
	
	public int delMenus(List<String> ids);
}
