package cn.ssm.mapper.role;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.role.Role;

@Repository(value="iRoleMapper")
public interface IRoleMapper {

	public List<Role> selectAll();
}
