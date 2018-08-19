package cn.ssm.service.role.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.role.Role;
import cn.ssm.mapper.role.IRoleMapper;
import cn.ssm.service.role.IRoleService;
@Service(value="iRoleService")
public class RoleServiceImpl implements IRoleService{
	@Autowired
	private IRoleMapper iRoleMapper; 
	@Override
	public List<Role> selectAll() {
		
		return iRoleMapper.selectAll();
	}

}
