package cn.tag;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;

import cn.ssm.page.Page;

public class PageTag extends SimpleTagSupport{
	
	private String url;
	private Page page;
	private String paramter;
	
	
	public String getParamter() {
		return paramter;
	}



	public void setParamter(String paramter) {
		this.paramter = paramter;
	}



	public String getUrl() {
		return url;
	}



	public void setUrl(String url) {
		this.url = url;
	}



	public Page getPage() {
		return page;
	}



	public void setPage(Page page) {
		this.page = page;
	}



	@Override
	public void doTag() throws JspException, IOException {
		
		StringBuffer content = new StringBuffer();
		content.append("<div class='message'>共<i class='blue'>");
		content.append(page.getDataCount()).append("</i>");//记录数
		content.append("条记录，当前显示第&nbsp;<i class='blue'>");
		content.append(page.getCurrentPage());//当前第几页
		content.append("&nbsp;</i>页共<i class='blue'>");
		content.append(page.getTotalPage());//共多少页
		content.append("</i>页").append("</div>");
		
		content.append("<ul class='paginList'>");
		content.append("<li class='paginItem'>");
		content.append("<a href='"+url+"?"+paramter+"=1' style='width:50px'>").append("首页").append("</a>");	
		content.append("</li>");
		
		
		content.append("<li class='paginItem'>");
		content.append("<a href='"+url+"?"+paramter+"="+(page.getCurrentPage()-1)+"' style='width:50px'>").append("上一页").append("</a>");	
		content.append("</li>");
		
		
		content.append("<li class='paginItem'>");
		content.append("<a href='"+url+"?"+paramter+"="+(page.getCurrentPage()+1)+"' style='width:50px'>").append("下一页").append("</a>");	
		content.append("</li>");
		
		content.append("<li class='paginItem'>");
		content.append("<a href='"+url+"?"+paramter+"="+page.getTotalPage()+"' style='width:50px'>").append("尾页").append("</a>");	
		content.append("</li>");
		
		content.append("</ul>");
		this.getJspContext().getOut().write(content.toString());
	}




}
