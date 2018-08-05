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
		// ��ȡ�ļ�����
		String fileName = file.getName();
		// ��ȡ�ļ���׺����������Ϊ�ļ�����
		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        // �ļ�����
        System.out.println("�ļ����ƣ�" + fileName);
        // �ļ�����
        System.out.println("�ļ����ͣ�" + fileType);
        
        if (fileType == null || fileType.equals("")) return null;
        
        String result = null;
        InputStream in = new FileInputStream(file);
        if (fileType.equals("doc")) {
            // ��ȡdoc��word�ĵ�
            WordExtractor wordExtractor = new WordExtractor(in);
            result = wordExtractor.getText();
            System.out.println(result);
            // �ر��ĵ�
            wordExtractor.close();

        } else if (fileType.equals("docx")) {
            // ��ȡdocx��word�ĵ�
            XWPFWordExtractor xwpfWordExtractor = new XWPFWordExtractor(
                    new XWPFDocument(in));
            result = xwpfWordExtractor.getText();
            System.out.println(result);
            // �ر��ĵ�
            xwpfWordExtractor.close();
        }
		return result;
	}

}
