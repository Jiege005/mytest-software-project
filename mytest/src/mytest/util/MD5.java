package mytest.util;

/**
 * 文件名称：MD5.java
 * 文件描述: 
 * 版权所有: 版权所有(C)2001-2009
 * 公   司: 中国教师研修网
 * 内容摘要: 
 * 其它说明: 
 * 创建作者：roben.he
 * 创建时间：Dec 11, 2008 6:51:43 PM
 * 修改时间：$Date$
 * 当前版本：$Revision$
 * 最近修改作者：$Author$
 * 最近修改时间：$Date$
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	private static MessageDigest currentAlgorithm;

	public static String computeDigest(byte[] b) {
		try {
			currentAlgorithm = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
		}
		currentAlgorithm.reset();
		currentAlgorithm.update(b);
		byte[] hash = currentAlgorithm.digest();
		String d = "";
		for (int i = 0; i < hash.length; i++) {
			int v = hash[i] & 0xFF;
			if (v < 16)
				d += "0";
			d += Integer.toString(v, 16).toLowerCase();
		}
		return d;
	}

	public static void main(String args[]) {
		String str = "9db06bcff9248837f86d1a6bcf41c9e7";
		System.out.println(str.length());
		String ss = new MD5().computeDigest(str.getBytes());
		System.out.println(ss);
	}
}
