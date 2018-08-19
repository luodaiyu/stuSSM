package cn.ssm.mapper.teacher;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.ssm.entity.teacher.Teacher;
@Repository(value="iTeacherMapper")
public interface ITeacherMapper {

	public List<Teacher> selectTeacherAll(Teacher t);
	
	public int updateTeacher(Teacher t);
	
	public Teacher getTeacherByID(int tid);
	
	public int deleteTeacherOne(int tid);
	
	public int insertTeacher(Teacher t);
	
	
	
	
}
