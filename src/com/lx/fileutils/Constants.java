package com.lx.fileutils;

import java.io.File;
import java.nio.charset.Charset;

public class Constants {
	public static final String ROOT_PATH = "C:\\Users\\kyuty\\Desktop\\SearchFiles";
	public static final String INDEX_PATH = "C:\\Users\\kyuty\\Desktop\\SearchFiles\\index"; // 存放Lucene索引文件的位置
	public static final String SCAN_PATH = "C:\\Users\\kyuty\\Desktop\\SearchFiles\\files"; // 需要被扫描的位置，测试的时候记得多在这下面放一些文件
	public static final String WORD_2_HTML_PATH = "C:\\Users\\kyuty\\Desktop\\SearchFiles\\htmls";
	
	public static void printEncoding() {
		System.out.println("Constants printEncoding ========== begin ======");
		
		System.getProperties().put("file.encoding", "UTF-8");
		
        //获取系统默认编码  get system default encoding
        System.out.println(System.getProperty("file.encoding"));   
           
        //获取系统默认的字符编码  get charset default encoding
        System.out.println(Charset.defaultCharset()); 
        
        //获取系统默认语言
        System.out.println(System.getProperty("user.language"));
 
        //获取系统属性列表
        //System.getProperties().list(System.out);
 
        //设置编码
        //System.getProperties().put("file.encoding", "GBK");
        System.out.println("Constants printEncoding ========== end ========");
	}
}
