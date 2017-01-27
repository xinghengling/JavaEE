package wnl.utils;

public class StringUtils {

	/**
	 * 判断字符串是否为空
	 */

	public static boolean isEmpty(String str) {
		if (str != null && str.trim().length() > 0)
			return false;
		return true;
	}

	/**
	 *  判断是否全是11为数字
	 */
	
	public static boolean isNumberic(String str){
		if(str!=null&&str.length()==10){
			return true;
		}
		return false;
	}
}
