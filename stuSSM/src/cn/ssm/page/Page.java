package cn.ssm.page;

import org.apache.ibatis.session.RowBounds;

public class Page extends RowBounds {

	private int currentPage = 1;//当前页
	private int totalPage = 0;//总页数
	private int dataCount;//总条数
	private int pageNumber = 2;//每页显示条数
	
	private int offsetPage;//提供给数据库使用
	private int limitPage;//
	
	public int getCurrentPage() {
		//判断当前页是否小于第一页页码，如果小于则等于第一页
		if(currentPage <= 0){
			currentPage = 1;
		}
		//判断当前页是否到最后一页，如果是最后一页，当前的值就是总页数
		if(getTotalPage() > 0){
			if(currentPage >= totalPage){
				currentPage = totalPage;
			}
		}
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		//做总页数计算，看看是否有多余的不满的页
		if(dataCount % pageNumber == 0){
			totalPage = dataCount / pageNumber;
		}else{
			totalPage = dataCount / pageNumber;
			totalPage += 1;
		}
		if(totalPage <= 0){
			totalPage = 1;
		}
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getDataCount() {
		return dataCount;
	}
	public void setDataCount(int dataCount) {
		this.dataCount = dataCount;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	

	public int getOffsetPage() {
		offsetPage = (this.getCurrentPage() - 1) * pageNumber;
		return offsetPage;
	}

	public int getLimitPage() {
		this.limitPage = pageNumber;
		return limitPage;
	}

}
