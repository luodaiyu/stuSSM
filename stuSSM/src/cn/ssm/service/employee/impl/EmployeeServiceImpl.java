package cn.ssm.service.employee.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.employee.Employee;
import cn.ssm.mapper.employee.IEmployeeMapper;
import cn.ssm.page.Page;
import cn.ssm.service.employee.IEmployeeService;
@Service(value="iEmployeeService")
public class EmployeeServiceImpl implements IEmployeeService{
	@Autowired
	private IEmployeeMapper iEmployeeMapper;
	@Override
	public Employee denglu(Employee e) {
		
		return iEmployeeMapper.denglu(e);
	}
	@Override
	public List<Employee> selectEmployeeAll(Employee e) {
		
		return iEmployeeMapper.selectEmployeeAll(e);
	}
	@Override
	public boolean insertEmployee(Employee e) {
		
		return iEmployeeMapper.insertEmployee(e) > 0 ? true : false;
	}
	@Override
	public boolean deleteEmployee(List<String> ids) {
		
		return iEmployeeMapper.deleteEmployee(ids) > 0 ? true : false;
	}
	@Override
	public boolean deleteEmployeeOne(int id) {
	
		return iEmployeeMapper.deleteEmployeeOne(id) > 0 ? true : false;
	}
	@Override
	public Employee getEmployeeByID(int id) {
		
		return iEmployeeMapper.getEmployeeGyID(id);
	}
	@Override
	public boolean updateEmployee(Employee e) {
		
		return iEmployeeMapper.updateEmployee(e) > 0 ? true : false;
	}

} 
