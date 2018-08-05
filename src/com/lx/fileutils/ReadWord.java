package com.lx.fileutils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

public class ReadWord {

	public static String read(File file) throws Exception {
		if (file == null || !file.exists()) {
			System.out.println("file = " + file + " exists = " + !file.exists());
			return null;
		}
		// 获取文件名称
		String fileName = file.getName();
		// 获取文件后缀名，将其作为文件类型
		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        // 文件名称
        System.out.println("文件名称：" + fileName);
        // 文件类型
        System.out.println("文件类型：" + fileType);
        
        if (fileType == null || fileType.equals("")) return null;
        
        String result = null;
        InputStream in = new FileInputStream(file);
        if (fileType.equals("doc")) {
            // 获取doc的word文档
            WordExtractor wordExtractor = new WordExtractor(in);
            result = wordExtractor.getText();
            System.out.println(result);
            // 关闭文档
            wordExtractor.close();

        } else if (fileType.equals("docx")) {
            // 获取docx的word文档
            XWPFWordExtractor xwpfWordExtractor = new XWPFWordExtractor(
                    new XWPFDocument(in));
            result = xwpfWordExtractor.getText();
            System.out.println(result);
            // 关闭文档
            xwpfWordExtractor.close();
        }
		return result;
	}

}
