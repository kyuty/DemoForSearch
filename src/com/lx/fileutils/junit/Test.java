package com.lx.fileutils.junit;

import java.io.File;

import com.lx.fileutils.ReadWord;

public class Test {
	public static void main(String[] args) {
		System.out.println("begin");
		//File file = new File("D:\\code\\workspace_java_web\\DemoForSearch\\src\\1.doc");
		File file = new File("C:\\Users\\Administrator\\Desktop\\李杏程序\\李娟莉_书稿.doc");
		try {
			ReadWord.read(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("end");
	}
}
