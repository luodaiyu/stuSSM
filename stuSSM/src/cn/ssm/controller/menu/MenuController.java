package cn.ssm.controller.menu;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.employee.Employee;
import cn.ssm.entity.menu.Menu;
import cn.ssm.page.Page;
import cn.ssm.service.menu.IMenuService;

@Controller
public class MenuController {

	@Autowired
	private IMenuService iMenuService;
	@RequestMapping("/toleft")
	public String toleft(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		Employee employee = (Employee) session.getAttribute("EMPLOYEE");
		if(employee == null){
			try {
				response.getWriter().write("<script>parent.location.href='login.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			List<Menu> li = iMenuService.selectMenuByRID(employee.getRid());
			request.setAttribute("MENU", li);
			return "left";
		}
		return null;
	}
	
	@RequestMapping("/tomenu")
	public String toMenuList(HttpServletRequest request,HttpSession session,HttpServletResponse response,Integer currpage){
		if(currpage == null){
			currpage = 1;
		}
		Page page = new Page();
		page.setCurrentPage(currpage);
		List<Menu> list=iMenuService.selectMenuAll(page);
		request.setAttribute("LIST", list);
		request.setAttribute("PAGE", page);
		return "menuList";
	}
	
	@RequestMapping("/delmenu")
	public void delMenu(Integer id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		boolean b=iMenuService.delMenu(id);
		
		if(b){
			request.getRequestDispatcher("tomenu.do").forward(request, response);
		}else{
			response.getWriter().write("删除失败");
		}
	}
	
	@RequestMapping("/toAddMenu")
	public String toAdd(HttpServletRequest request){
		return "addMenu";
	}
	
	@RequestMapping("/doAddMenu")
	public void doAdd(Menu menu,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		boolean b=iMenuService.addMenu(menu);
		if(b){
			response.getWriter().write(b+"");
		}else{
			response.getWriter().write("添加失败");
		}
	}
	
	@RequestMapping("/toUpdate")
	public String toUpdate(Integer id,HttpServletRequest request,HttpServletResponse response){
		Menu menu=iMenuService.getMenuById(id);
		
		request.setAttribute("MENU", menu);
		return "updateMenu";
	}
	
	@RequestMapping("/doUpdate")
	public void doUpdate(Menu menu,HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		boolean b=iMenuService.updateMenu(menu);
		if(b){
			response.getWriter().write(b+"");
		}else{
			response.getWriter().write("修改失败");
		}
	}
	
	@RequestMapping("/delMenus")
	public void delMenus(String ids,HttpServletResponse response){
		String[] strings = ids.split(",");
		List<String> li = new ArrayList<String>();
		for(int i = 0; i < strings.length; i++){
			li.add(strings[i]);
		}
		int rs = iMenuService.delMenus(li);
		
		try {
			response.getWriter().write(rs+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
