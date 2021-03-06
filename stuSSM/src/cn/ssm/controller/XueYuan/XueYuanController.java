package cn.ssm.controller.XueYuan;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;



import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.service.XueYuan.IXueYuanService;

@Controller
public class XueYuanController {

	@Autowired
	private IXueYuanService iXueYuanService;
	
	@RequestMapping(value = "/xueyuan")
	public String toIndex(HttpServletRequest request) {

		List<XueYuan> list = iXueYuanService.selectXueYuanAll();
		
		request.setAttribute("XUEYUANLIST", list);
		
		return "xueyuanlist";
	}
	
	@RequestMapping(value = "/toaddxueyuan")
	public String toAdd() {
		return "addXueYuan";
	}
	
	@RequestMapping(value="/doaddxueyuan")
	public void doAdd(XueYuan x,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		boolean b=iXueYuanService.insertXueYuan(x);
		if(b){
			response.getWriter().write(b+"");
		}else{
			response.getWriter().write("添加失败");
		}
		
	}
	
	@RequestMapping(value="/delXueYuan")
	public void todel(Integer xid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		boolean b=iXueYuanService.delXueYuan(xid);
		
		request.getRequestDispatcher("xueyuan.do").forward(request, response);
	}
	
	@RequestMapping(value="/toupdateXueYuan")
	public String toUpdate(Integer xid,HttpServletRequest request){
		XueYuan xueYuan=iXueYuanService.getXueYuanById(xid);
		request.setAttribute("XUEYUAN", xueYuan);
		return "updateXueYuan";
	}
	
	@RequestMapping(value="/doupdateXueYuan")
	public void doUpdate(XueYuan xueYuan,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		boolean b=iXueYuanService.updateXueYuan(xueYuan);
		if(b){
			response.getWriter().write(b+"");
		}else{
			response.getWriter().write("修改失败");
		}
	}
	
	@RequestMapping(value="/getXueYuan")
	public String getXueYuan(Integer xid,HttpServletRequest request){
		
		XueYuan xueYuan=iXueYuanService.getXueYuanById(xid);
		request.setAttribute("XUEYUAN", xueYuan);
		return "getXueYuan";
	}
	
	@RequestMapping(value="/delXueYuans")
	public void delXueYuans(String xids,HttpServletResponse response){
		String[] strings = xids.split(",");
		List<String> li = new ArrayList<String>();
		for(int i = 0; i < strings.length; i++){
			li.add(strings[i]);
		}
		int rs = iXueYuanService.delXueYuans(li);
		
		try {
			response.getWriter().write(rs+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
