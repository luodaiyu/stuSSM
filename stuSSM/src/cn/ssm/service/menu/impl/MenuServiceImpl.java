package cn.ssm.service.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.menu.Menu;
import cn.ssm.mapper.menu.IMenuMapper;
import cn.ssm.page.Page;
import cn.ssm.service.menu.IMenuService;
@Service(value="iMenuService")
public class MenuServiceImpl implements IMenuService{
	@Autowired
	private IMenuMapper iMenuMapper;
	@Override
	public List<Menu> selectMenuByRID(int rid) {
		
		return iMenuMapper.selectMenuByRID(rid);
	}
	@Override
	public List<Menu> selectMenuAll(Page page) {
		// TODO Auto-generated method stub
		return iMenuMapper.selectMenuAll(page);
	}
	@Override
	public boolean delMenu(int id) {
		// TODO Auto-generated method stub
		return iMenuMapper.delMenu(id);
	}
	
	@Override
	public boolean addMenu(Menu menu) {
		// TODO Auto-generated method stub
		return iMenuMapper.addMenu(menu);
	}
	@Override
	public Menu getMenuById(int id) {
		// TODO Auto-generated method stub
		return iMenuMapper.getMenuById(id);
	}
	@Override
	public boolean updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		return iMenuMapper.updateMenu(menu);
	}
	@Override
	public int delMenus(List<String> ids) {
		// TODO Auto-generated method stub
		return iMenuMapper.delMenus(ids);
	}

}
