package com.mouxf.common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ConversionDateFormat {

	/**
	 * 转换日期格式
	 */
	public static String conversionDateFormat(Date date){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sDate=sdf.format(date);
		return sDate;
	}
}
