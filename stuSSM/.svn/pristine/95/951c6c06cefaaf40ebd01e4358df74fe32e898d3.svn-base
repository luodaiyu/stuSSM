package cn.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	public final static String DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	public static String getDateString(String format){
		SimpleDateFormat df = new SimpleDateFormat(format);
		return df.format(new Date());
	}
	
	public static String getDateString(){
		return getDateString(DEFAULT_FORMAT);
	}

}
