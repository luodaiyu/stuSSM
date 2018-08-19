package cn.ssm.service.teacher;

import java.util.List;


import cn.ssm.entity.teacher.Teacher;


public interface ITeacherService {

	public List<Teacher> selectTeacherAll(Teacher t);
	
	public boolean updateTeacher(Teacher t);
	
	public Teacher getTeacherByID(int tid);

	public boolean deleteTeacherOne(int tid);
	
	public boolean insertTeacher(Teacher t);
}
