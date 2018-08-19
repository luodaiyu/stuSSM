package cn.ssm.service.teacher.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.teacher.Teacher;
import cn.ssm.mapper.teacher.ITeacherMapper;
import cn.ssm.service.teacher.ITeacherService;

@Service(value="ITeacherService")
public class TeacherServiceImpl implements ITeacherService{
	@Autowired
	private ITeacherMapper iTeacherMapper;
	@Override
	public List<Teacher> selectTeacherAll(Teacher t) {
		
		return iTeacherMapper.selectTeacherAll(t);
	}
	@Override
	public boolean updateTeacher(Teacher t) {
		
		return iTeacherMapper.updateTeacher(t) > 0 ? true : false;
	}
	@Override
	public Teacher getTeacherByID(int tid) {
		
		return iTeacherMapper.getTeacherByID(tid);
	}
	@Override
	public boolean deleteTeacherOne(int tid) {
		
		return iTeacherMapper.deleteTeacherOne(tid) > 0 ? true : false;
	}
	@Override
	public boolean insertTeacher(Teacher t) {
		
		return iTeacherMapper.insertTeacher(t) > 0 ? true : false;
	}
	
}
