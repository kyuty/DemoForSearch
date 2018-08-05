package com.lx.fileutils;

import java.io.File;

public class ReadTXT {

	public static String read(File file) throws Exception {
		if (file == null || !file.exists()) {
			System.out.println("file = " + file + " exists = " + !file.exists());
			return null;
		}
		// 获取文件名称
		String fileName = file.getName();
        // 文件名称
        System.out.println("文件名称：" + fileName);
		// 获取文件后缀名，将其作为文件类型
		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        // 文件类型
        System.out.println("文件类型：" + fileType);
        
        if (fileType == null || fileType.equals("")) return null;
        
        if (fileType.equals("txt") || fileType.equals("html")) {
        	String readFile = FileUtil.readFile(file.getAbsolutePath());
            System.out.println("readFile = " + readFile);
            return readFile;
        }
        return null;
	}
}
