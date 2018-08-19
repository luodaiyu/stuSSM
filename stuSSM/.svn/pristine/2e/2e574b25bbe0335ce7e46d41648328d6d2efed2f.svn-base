package cn.ssm.service.XueYuan.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.entity.xueyuan.XueYuan;
import cn.ssm.mapper.xueyuan.IXueYuanMapper;
import cn.ssm.service.XueYuan.IXueYuanService;

@Service(value="iXueYuanService")
public class XueYuanServiceImpl implements IXueYuanService{

	@Autowired
	private IXueYuanMapper iXueYuanMapper;
	@Override
	public List<XueYuan> selectXueYuanAll() {
		
		return iXueYuanMapper.selectXueYuanAll();
	}

	@Override
	public boolean insertXueYuan(XueYuan xueYuan) {
		// TODO Auto-generated method stub
		return iXueYuanMapper.insertXueYuan(xueYuan);
	}

	@Override
	public boolean delXueYuan(int xid) {
		// TODO Auto-generated method stub
		return iXueYuanMapper.delXueYuan(xid);
	}

	@Override
	public boolean updateXueYuan(XueYuan xueYuan) {
		// TODO Auto-generated method stub
		return iXueYuanMapper.updateXueYuan(xueYuan);
	}

	@Override
	public XueYuan getXueYuanById(int xid) {
		// TODO Auto-generated method stub
		return iXueYuanMapper.getXueYuanById(xid);
	}

	@Override
	public int delXueYuans(List<String> xids) {
		// TODO Auto-generated method stub
		return iXueYuanMapper.delXueYuans(xids);
	}

}
