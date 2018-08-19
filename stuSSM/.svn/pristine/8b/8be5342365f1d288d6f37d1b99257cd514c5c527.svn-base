package cn.ssm.service.grade.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.grade.Grade;
import cn.ssm.entity.grade.GradeList;
import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.mapper.grade.IGradeMapper;
import cn.ssm.page.Page;
import cn.ssm.service.grade.IGradeService;
@Service(value="iGradeService")
public class GradeServiceImpl implements IGradeService {
	@Autowired
	private IGradeMapper iGradeMapper;
	@Override
	public List<Grade> selectGradeList(Map<String,Integer> params,Page page) {
		return iGradeMapper.selectGradeList(params,page);
	}
	@Override
	public List<Grade> selectGradeAll() {
		return iGradeMapper.selectGradeAll();
	}
	@Override
	public boolean insertGrade(Grade grade) {
		return iGradeMapper.insertGrade(grade)>0?true:false;
	}
	@Override
	public boolean updateGradeBySID(Grade grade) {
		return iGradeMapper.updateGradeBySID(grade)>0?true:false;
	}
	
	@Override
	public List<Grade> selectGradeCJBySID(int sid) {
		return iGradeMapper.selectGradeCJBySID(sid);
	}
	@Override
	public boolean deleteGrade(Map<String,Integer> map) {
		return iGradeMapper.deleteGrade(map)>0?true:false;
	}
	@Override
	public Grade checkTid(int tid) {
		return iGradeMapper.checkTid(tid);
	}
	@Override
	public Grade checkSid(int sid) {
		return iGradeMapper.checkSid(sid);
	}
	@Override
	public GradeList selectGradeCJBySIDTID(Map<String,Integer> params) {
		return  iGradeMapper.selectGradeCJBySIDTID(params);
	}
	@Override
	public boolean checkAllid(Map<String, Integer> map) {
		return iGradeMapper.checkAllid(map)!=null?true:false;
	}
	
	

}
