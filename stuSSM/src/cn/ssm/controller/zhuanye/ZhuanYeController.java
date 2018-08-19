package cn.ssm.controller.zhuanye;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.entity.zhuanye.ZhuanYe;
import cn.ssm.page.Page;
import cn.ssm.service.XueYuan.IXueYuanService;
import cn.ssm.service.zhuanye.IZhuanYeService;
@Controller
public class ZhuanYeController {
	@Autowired
	private IZhuanYeService iZhuanYeService;
	@Autowired
	private IXueYuanService iXueYuanService;
	
	@RequestMapping(value="/toZhuanYeList")
	public String toZhuanYeList(HttpServletRequest request,Integer currpage){
		if(currpage == null){
			currpage = 1;
		}
		Page page = new Page();
		page.setCurrentPage(currpage);
		List<ZhuanYe> zyList=iZhuanYeService.selectZhuanYeList(page);
		request.setAttribute("ZHUANYE_LIST", zyList);
		request.setAttribute("PAGE", page);
		return "zhuanyeList";
	}
	@RequestMapping("/toAddZhuanYe")
	public String toAddZhuanYe(HttpServletRequest request){
		List<XueYuan> xyList=iXueYuanService.selectXueYuanAll();
		request.setAttribute("XUEYUAN_LIST", xyList);
		return "addZhuanYe";
	}
	@RequestMapping(value="/checkzName")
	public void checkzName(String zName,HttpServletResponse response){
		ZhuanYe zhuanye=iZhuanYeService.selectZhuanYeByName(zName);
		try {
			PrintWriter out=response.getWriter();
			if(zhuanye==null){
				out.write("false");
			}else{
				out.write("true");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/checkzName2")
	public void checkzName2(String zName,Integer zid,HttpServletResponse response){
		ZhuanYe zhuanye1=iZhuanYeService.selectZhuanYeByName(zName);
		ZhuanYe zhuanye2=iZhuanYeService.selectZhuanYeByID(zid);
		try {
			PrintWriter out=response.getWriter();
			if(zhuanye2.getzName().equals(zName)||zhuanye1==null){
				out.write("false");
			}else{
				out.write("true");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/doAddZhuanYe")
	public void doAddZhuanYe(String zName,Integer xid,HttpServletResponse response){
		ZhuanYe zhuanye=new ZhuanYe();
		XueYuan xueyuan=new XueYuan();
		xueyuan.setXid(xid);
		zhuanye.setXueyuan(xueyuan);
		zhuanye.setzName(zName);
		boolean rs=iZhuanYeService.insertZhuanYe(zhuanye);
		try {
			response.getWriter().write(rs+"");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/toQueryZhuanYe")
	public String toQueryZhuanYe(Integer zid,HttpServletRequest request){
		ZhuanYe zhuanye=iZhuanYeService.selectZhuanYeByID(zid);
		request.setAttribute("ZHUANYE", zhuanye);
		return "queryZhuanYe";
	}
	@RequestMapping(value="/toUpdateZhuanYe")
	public String toUpdateZhuanYe(Integer zid,HttpServletRequest request){
		ZhuanYe zhuanye=iZhuanYeService.selectZhuanYeByID(zid);
		request.setAttribute("ZHUANYE", zhuanye);
		List<XueYuan> xyList=iXueYuanService.selectXueYuanAll();
		request.setAttribute("XUEYUAN_LIST", xyList);
		return "updateZhuanYe";
	}
	@RequestMapping(value="/doUpdateZhuanYe")
	public void doUpdateZhuanYe(String zName,Integer zid,Integer xid,HttpServletResponse response){
		ZhuanYe zhuanye=new ZhuanYe();
		zhuanye.setzName(zName);
		zhuanye.setZid(zid);
		XueYuan xueyuan=new XueYuan();
		xueyuan.setXid(xid);
		zhuanye.setXueyuan(xueyuan);
		boolean rs=iZhuanYeService.updateZhuanYe(zhuanye);
		try {
			PrintWriter out=response.getWriter();
			out.write(rs+"");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/doDeleteZhuanYe")
	public void doDeleteZhuanYe(String zids,HttpServletResponse response){
		List<String> sList=new ArrayList<String>();
		String[] strings = zids.split(",");
		for(int i=0;i<strings.length;i++){
			sList.add(strings[i]);
		}
		boolean rs=iZhuanYeService.deleteZhuanYe(sList);
		try {
			PrintWriter out=response.getWriter();
			out.write(rs+"");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
