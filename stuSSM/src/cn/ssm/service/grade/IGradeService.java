package cn.ssm.service.grade;

import java.util.List;
import java.util.Map;

import cn.ssm.entity.grade.Grade;
import cn.ssm.entity.grade.GradeList;
import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.page.Page;

public interface IGradeService {
	public List<Grade> selectGradeList(Map<String,Integer> params,Page page);
	public List<Grade> selectGradeAll();
	public boolean insertGrade(Grade grade);
	public boolean updateGradeBySID(Grade grade);
	public GradeList selectGradeCJBySIDTID(Map<String,Integer> params);
	public List<Grade> selectGradeCJBySID(int sid);
	public boolean deleteGrade(Map<String,Integer> map);
	public Grade checkTid(int tid);
	public Grade checkSid(int sid);
	public boolean checkAllid(Map<String,Integer> map);
}
