package cn.ssm.controller.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.teacher.Teacher;
import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.service.XueYuan.IXueYuanService;
import cn.ssm.service.teacher.ITeacherService;
@Controller
public class TeacherController {
	@Autowired
	private ITeacherService iTeacherService;
	@Autowired
	private IXueYuanService iXueYuanService;
	@RequestMapping("/selectTeacher")
	public String selectTeacher(HttpServletRequest request,Teacher t){
		List<Teacher> li = iTeacherService.selectTeacherAll(t);
		request.setAttribute("TEACHER", li);
		return "teacherList";
	}
	@RequestMapping("/toupdateTeacher")
	public String toupdateTeacher(Integer tid,HttpServletRequest request){
		Teacher t = iTeacherService.getTeacherByID(tid);
		List<XueYuan> li = iXueYuanService.selectXueYuanAll();
		request.setAttribute("XUEYUAN", li);
		request.setAttribute("Teacher", t);
		return "updateTeacher";
	}
	@RequestMapping("/doupdateTeacher")
	public void doupdateTeacher(Teacher t,HttpServletResponse response){
		boolean rs = iTeacherService.updateTeacher(t);
		try {
			response.getWriter().write(rs+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/dodeleteTeacherOne")
	public void dodleteTeacherOne(int tid,HttpServletRequest request,HttpServletResponse response){
		response.setCharacterEncoding("utf-8");
		
		boolean rs = iTeacherService.deleteTeacherOne(tid);
		if(rs){
			try {
				response.getWriter().write("<script>alert('删除成功！');location.href='selectTeacher.do';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try {
				response.getWriter().write("<script>alert('删除失败！');location.href='selectTeacher.do';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
	}
	@RequestMapping("/toinsertTeacher")
	public String toinsertTeacher(HttpServletRequest request){
		List<XueYuan> list = iXueYuanService.selectXueYuanAll();
		request.setAttribute("XY", list);
		return "addTeacher";
	}
	@RequestMapping("/doinsertTeacher")
	public void doinsertTeacher(Teacher t,HttpServletResponse response) throws IOException{
		boolean rs = iTeacherService.insertTeacher(t);
		response.getWriter().write(rs+"");
	}
}
