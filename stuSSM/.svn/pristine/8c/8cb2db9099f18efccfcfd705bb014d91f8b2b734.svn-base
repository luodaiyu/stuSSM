package cn.ssm.mapper.employee;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.employee.Employee;
import cn.ssm.page.Page;
@Repository(value="iEmployeeMapper")
public interface IEmployeeMapper {

	public Employee denglu(Employee e);
	
	public List<Employee> selectEmployeeAll(Employee e);
	
	public int insertEmployee(Employee e);
	
	public int deleteEmployee(List<String> ids);
	
	public int deleteEmployeeOne(int id);
	
	public int updateEmployee(Employee e);
	
	public Employee getEmployeeGyID(int id);
}
