package cn.ssm.controller.banji;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.banji.Banji;
import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.page.Page;
import cn.ssm.service.XueYuan.IXueYuanService;
import cn.ssm.service.banji.IBanjiService;

@Controller
public class BanjiController {
	
	@Autowired
	private IBanjiService banjiService;
	@Autowired
	private IXueYuanService iXueYuanService;
	
	@RequestMapping(value="toBanjiList")
	public String toBanjiList(HttpServletRequest req,Integer currpage){
		if(currpage == null){
			currpage = 1;
		}
		Page page = new Page();
		page.setCurrentPage(currpage);
		List<Banji> blist=banjiService.selectAll(page);
		req.setAttribute("BanjiList",blist);
		req.setAttribute("PAGE", page);
		return "banjilist";
	}
    @RequestMapping(value="toBanjiView")
    public String toBanjiView(int id,HttpServletRequest req){
    	Banji banji=banjiService.getBanjiBYid(id);
    	req.setAttribute("Banji", banji);
    	return "banjiview";
    }
    @RequestMapping(value="doBanjiDelete")
    public void doBanjiDelete(int id,HttpServletResponse resp){
    	boolean boo=banjiService.deleteBanjiBYid(id);
    	if(boo){
    		try {
				resp.getWriter().write("<script>alert('删除成功');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}else{
    		try {
				resp.getWriter().write("<script>alert('删除失败');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
    }
    @RequestMapping(value="doBanjiDeleteBYList")
    public void doBanjiDeleteBYList(String ids,HttpServletResponse resp){
    	String id[]=ids.split(",");
    	List<String> list=new ArrayList<String>();
    	for(int i=0;i<id.length;i++){
    		list.add(id[i]);
    	}
    	boolean boo=banjiService.deleteBanji(list);
    	try {
			resp.getWriter().write(boo+"");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    @RequestMapping(value="toBanjiInsert")
    public String toBanjiInsert(HttpServletRequest req){
    	List<XueYuan> list = iXueYuanService.selectXueYuanAll();
    	req.setAttribute("XueYuanList", list);
    	return "banjiinsert";
    }
    @RequestMapping(value="doBanjiInsert")
    public void doBanjiInsert(Banji bj,HttpServletResponse resp,int xid){
    	XueYuan xueyuan=iXueYuanService.getXueYuanById(xid);
    	bj.setXueyuan(xueyuan);
    	boolean boo=banjiService.insertBanji(bj);
    	if(boo){
    		try {
				resp.getWriter().write("<script>alert('添加成功');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}else{
    		try {
				resp.getWriter().write("<script>alert('添加失败');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
    }
    @RequestMapping(value="checkedName")
    public void checkedName(Banji bj,HttpServletResponse resp){
    	Banji bj1=banjiService.getBanjiBYname(bj);
    	boolean boo=false;
    	if(bj1!=null){
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
    @RequestMapping(value="toBanjiUpdate")
    public String toBanjiUpdate(int id,HttpServletRequest req){
    	Banji banji=banjiService.getBanjiBYid(id);
    	List<XueYuan> list = iXueYuanService.selectXueYuanAll();
    	req.setAttribute("XueYuanList", list);
    	req.setAttribute("Banji", banji);
    	return "banjiupdate";
    }
    @RequestMapping(value="doBanjiUpdate")
    public void toBanjiUpdate(Banji bj,HttpServletResponse resp,int xid,HttpServletRequest req){
    	
    	XueYuan xueyuan=iXueYuanService.getXueYuanById(xid);
    	bj.setXueyuan(xueyuan);
    	boolean boo=banjiService.updateBanji(bj);
    	if(boo){
    		try {
				resp.getWriter().write("<script>alert('aa');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}else{
    		try {
				resp.getWriter().write("<script>alert('bb');location.href='toBanjiList.do';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
    }
}
