package cn.ssm.interceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.PreparedStatementHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.session.RowBounds;

import cn.ssm.page.Page;
//定义这个接口的是拦截器，里边定理了需要拦截具体类，和具体方法


@Intercepts({
	@Signature(type=StatementHandler.class,method="prepare",args={Connection.class}),
})
public class PageInterceptorHander implements Interceptor{

	
	private String getLimitSql(Page page,String sql){
		return sql + " LIMIT "+page.getOffsetPage()+","+page.getLimitPage();
	}
	
	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		System.out.println("开始执行拦截代码");
		//获取要拦截类的目标
		StatementHandler statementHandler = (StatementHandler)invocation.getTarget();
		//得到对应配置中的SQL语句第一种
		//BoundSql boundSql = statementHandler.getBoundSql();
		//System.out.println(boundSql.getSql());
		//得到对应配置中的SQL语句第二种
		//得到一个metaObject对象
		MetaObject metaObject = SystemMetaObject.forObject(statementHandler);
		//得到对应配置中的SQL语句第二种
		BoundSql boundSql = (BoundSql)metaObject.getValue("delegate.boundSql");
		//输出最原始的SQL
		System.out.println(boundSql.getSql());
		//获得传递Page对象
		RowBounds rowBounds = (RowBounds)metaObject.getValue("delegate.rowBounds");
		if(rowBounds == null || rowBounds == RowBounds.DEFAULT){
			return invocation.proceed();
		}
		//得到当前传递参数的page对象
		Page page = (Page)rowBounds;
		
		//获得参数对象
		ParameterHandler parameterHandler = (ParameterHandler)metaObject.getValue("delegate.parameterHandler");
		//得当查询数据连接
		Connection con = (Connection)invocation.getArgs()[0];
		//查询当前的总记录数
		int countPage = getCountPage(con, boundSql.getSql(),parameterHandler);
		page.setDataCount(countPage);
		
		//给原始SQL增加limit分页
		String sqlString = getLimitSql(page, boundSql.getSql());
		System.out.println(sqlString);
		metaObject.setValue("delegate.boundSql.sql", sqlString);
		System.out.println(boundSql.getSql());
	
	
		return invocation.proceed();
	}
	
	public int getCountPage(Connection con,String boundSql,ParameterHandler parameterHandler) throws Exception{
		if(con == null){
			throw new Exception("Connection is null");
		}
		
		PreparedStatement stem = con.prepareStatement("select count(1) from ("+boundSql+") A");
		//设置参数
		parameterHandler.setParameters(stem);
		ResultSet rs = stem.executeQuery();
		if(rs.next()){
			return rs.getInt(1);
		}
		return 0;
	}

	@Override
	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	@Override
	public void setProperties(Properties properties) {
		
		String string = properties.getProperty("aaa");
		System.out.println(string);
	}



}
