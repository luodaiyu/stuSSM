package cn.ssm.service.student.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.student.Student;
import cn.ssm.mapper.student.IStudentMapper;
import cn.ssm.page.Page;
import cn.ssm.service.student.IStudentService;

@Service(value="studentService")
public class StudentService implements IStudentService {
    
	@Autowired
	private IStudentMapper iStudentMapper;
	
	@Override
	public List<Student> selectAll(Page page) {
		
		return iStudentMapper.selectAll(page);
	}

	@Override
	public Student selectView(int id) {
		return iStudentMapper.selectView(id);
	}

	@Override
	public boolean deleteBYid(int id) {
		return iStudentMapper.deleteBYid(id)>0?true:false;
	}

	@Override
	public boolean StudentAdd(Student stu) {
		
		return iStudentMapper.StudentAdd(stu)>0?true:false;
	}

	@Override
	public Student getStudentBYName(String name) {
		
		return iStudentMapper.getStudentBYName(name);
	}

	@Override
	public boolean updatestudent(Student stu) {
		
		return iStudentMapper.updatestudent(stu)>0?true:false;
	}

	@Override
	public boolean deleteStudent(List<String> list) {
		
		return iStudentMapper.deleteStudent(list)>0?true:false;
	}

}
