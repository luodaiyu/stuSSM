package cn.ssm.controller.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.banji.Banji;
import cn.ssm.entity.student.Student;
import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.page.Page;
import cn.ssm.service.XueYuan.IXueYuanService;
import cn.ssm.service.banji.IBanjiService;
import cn.ssm.service.student.IStudentService;
import cn.ssm.service.zhuanye.IZhuanYeService;


@Controller
public class StudentController {
	
	@Autowired
	private IStudentService studentService;
	@Autowired
	private IBanjiService banjiService;
	@Autowired
	private IXueYuanService iXueYuanService;
	@Autowired
	private IZhuanYeService iZhuanYeService;
	
	@RequestMapping(value="toStudentList")
	public String toStudentList(HttpServletRequest req,Integer currpage){
		if(currpage == null){
			currpage = 1;
		}
		Page page = new Page();
		page.setCurrentPage(currpage);
		List<Student> slist=studentService.selectAll(page);
		req.setAttribute("StudentList", slist);
		req.setAttribute("PAGE", page);
		return "studentlist";
	}
	
	@RequestMapping(value="toStudentView")
	public String toStudentView(int id,HttpServletRequest req){
		Student stu=studentService.selectView(id);
		req.setAttribute("Student", stu);
		return "studentview";
	}
	
	@RequestMapping(value="doStudentDeleteBYid")
	public void doStudentDeleteBYid(int id,HttpServletResponse resp){
		boolean boo=studentService.deleteBYid(id);
		if(boo){
    		try {
				resp.getWriter().write("<script>alert('删除成功');location.href='toStudentList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}else{
    		try {
				resp.getWriter().write("<script>alert('删除失败');location.href='toStudentList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
	}
	
	@RequestMapping(value="toStudentAdd")
	public String toStudentAdd(HttpServletRequest req){
		List<XueYuan> xlist=iXueYuanService.selectXueYuanAll();
		req.setAttribute("XueYuan",xlist);
		return "studentadd";
	}
	@RequestMapping(value="zhuanyeselect")
	public void zhuanyeselect(int xid,HttpServletResponse resp){
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		List<ZhuanYe> zlist=iZhuanYeService.selectZhuanYeByxid(xid);
	    JSONArray js=JSONArray.fromObject(zlist);
	    try {
			PrintWriter out=resp.getWriter();
			out.write(js.toString());
			out.flush();
			out.close();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	    
	}
	@RequestMapping(value="banjiselect")
	public void banjiselect(int xid,HttpServletResponse resp){
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		List<Banji> blist=banjiService.selectBanjiByXid(xid);
		JSONArray js=JSONArray.fromObject(blist);
		 try {
				PrintWriter out=resp.getWriter();
				out.write(js.toString());
				out.flush();
				out.close();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
	}
	@RequestMapping(value="doStudentAdd")
	public void doStudentAdd(Student stu,HttpServletResponse resp,int xid,int zid,int bid){
		   XueYuan xueyuan=iXueYuanService.getXueYuanById(xid); 
		   ZhuanYe zhuanye=iZhuanYeService.selectZhuanYeByID(zid);
		   Banji banji=banjiService.getBanjiBYid(bid);
		   System.out.println(xid+"--"+zid+"--"+bid);
		   stu.setXueyuan(xueyuan);
		   stu.setZhuanye(zhuanye);
		   stu.setBanji(banji);
		   boolean boo=studentService.StudentAdd(stu);
		   if(boo){
			   try {
				resp.getWriter().write("<script>alert('添加成功');location.href='toStudentList.do';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   }else{
			   try {
				resp.getWriter().write("<script>alert('添加失败');location.href='toStudentAdd.do';</script>");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		   }
		
	}
	
	@RequestMapping(value="toStudentUpdata")
	public String toStudentUpdata(HttpServletRequest req,int id){
		Student stu=studentService.selectView(id);
		req.setAttribute("Student", stu);
		return "studentupdate";
	}
    @RequestMapping(value="doStudentUpdata")
    public void doStudentUpdata(HttpServletResponse resp,Student stu){
    	resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
    	boolean boo=studentService.updatestudent(stu);
    	if(boo){
			   try {
				resp.getWriter().write("<script>alert('修改成功');location.href='toStudentList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		   }else{
			   try {
				resp.getWriter().write("<script>alert('修改失败');location.href='toStudentUpdata.do';</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
		   }
    }
    @RequestMapping(value="deleteStudent")
    public void deleteStudent(HttpServletResponse resp,String ids){
    	String id[]=ids.split(",");
    	List<String> list=new ArrayList<String>();
    	for(int i=0;i<id.length;i++){
    		list.add(id[i]);
    	}
    	boolean boo=studentService.deleteStudent(list);
    	try {
			resp.getWriter().write(boo+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    @RequestMapping(value="checkedStudentName")
    public void checkedStudentName(HttpServletResponse resp,String name){
    	Student stu=studentService.getStudentBYName(name);
    	boolean boo=false;
    	if(stu!=null){
    		boo=false;
    	}else{
    		boo=true;
    	}
    	try {
			resp.getWriter().write(boo+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    @RequestMapping(value="checkedNumber")
    public void checkedNumber(int bid,HttpServletResponse resp){
    	Banji bj=banjiService.getBanjiBYid(bid);
    	int a=bj.getBnop();
    	int b=bj.getBcapacity();
    	int num=b-a;
    	boolean boo=false;
    	if(num>=1){
    		boo=true;
    	}else{
    		boo=false;
    	}try {
			resp.getWriter().write(boo+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
