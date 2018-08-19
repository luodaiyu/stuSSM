package cn.ssm.mapper.student;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.student.Student;
import cn.ssm.page.Page;

@Repository(value="iStudentMapper")
public interface IStudentMapper {
	
	public List<Student> selectAll(Page page);
	
	public Student selectView(int id);
	
	public int deleteBYid(int id);
	
	public int StudentAdd(Student stu);
	
	public Student getStudentBYName(String name);
	
	public int updatestudent(Student stu);
	
	public int deleteStudent(List<String> list );

}
