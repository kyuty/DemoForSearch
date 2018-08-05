package com.lx.fileutils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.converter.PicturesManager;
import org.apache.poi.hwpf.converter.WordToHtmlConverter;
import org.apache.poi.hwpf.usermodel.PictureType;
import org.apache.poi.xwpf.converter.core.BasicURIResolver;
import org.apache.poi.xwpf.converter.core.FileImageExtractor;
import org.apache.poi.xwpf.converter.core.FileURIResolver;
import org.apache.poi.xwpf.converter.xhtml.XHTMLConverter;
import org.apache.poi.xwpf.converter.xhtml.XHTMLOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.w3c.dom.Document;

public class Word2Html {
	private static String TAG = "Word2Html#";
	
	public static void main(String[] args) throws Throwable {
//		String path = "C:\\Users\\Administrator\\Desktop\\SearchFiles\\lucene_files\\";
//		String file = "dbff543e-66ef-4b40-b416-751b7eb27450_2.doc";
		String path = "C:\\Users\\kyuty\\Desktop\\SearchFiles\\files";
		String file = "16738e13-885d-4c20-a89c-42f3dac7a165_虚拟现实Unity软件国资入库 --谢嘉成.doc";
		toHtml(path, file);
	}
	
	//private static String WORD_2_HTML_PATH = "\\word2html\\";

	public static void toHtml(String parentPath, String fileName) throws Throwable {
		Constants.printEncoding();
		File f = new File(parentPath + File.separator + fileName);
		if (!f.exists()) {
			System.out.println(TAG + "File not exist!!! parentPath = " + parentPath + " fileName = " + fileName);
			return;
		}
		System.out.println(TAG + "toHtml File exist. parentPath = " + parentPath + " fileName = " + fileName);
		if (fileName.endsWith("doc")) {
			Constants.printEncoding();
			doc(f);
		} else if (fileName.endsWith("docx")) {
			Word2007ToHtml(f);
		}
	}

	private static String getFileName(File f) {
		String fileName = f.getName();
		String result = fileName.substring(0,
				fileName.indexOf(".docx") == -1 ? fileName.indexOf(".doc") : fileName.indexOf(".docx"));
		return result;
		// CRC32 c = new CRC32();
		// c.update(result.getBytes());
		// return c.getValue();
	}

	private static void docx(File f) throws Throwable {

		// 生成 XWPFDocument
		InputStream in = new FileInputStream(f);
		XWPFDocument document = new XWPFDocument(in);

		// 准备 XHTML 选项 (设置 IURIResolver，把图片放到文件绝对路径下image/word/media文件夹
		//File imageFolderFile = new File(f.getParentFile().getPath() + WORD_2_HTML_PATH + "image\\" + getFileName(f));
		File imageFolderFile = new File(Constants.WORD_2_HTML_PATH + "\\image\\" + getFileName(f));
		XHTMLOptions options = XHTMLOptions.create().URIResolver(new FileURIResolver(imageFolderFile));
		options.setExtractor(new FileImageExtractor(imageFolderFile));
		options.setIgnoreStylesIfUnused(false);
		options.setFragment(true);

		// 将XWPFDocument 转换为 XHTML
		//File file1 = new File(f.getParentFile().getPath() + WORD_2_HTML_PATH + getFileName(f) + ".html");
		File file1 = new File(Constants.WORD_2_HTML_PATH + "\\" + getFileName(f) + ".html");
		OutputStream out = new FileOutputStream(file1);
		XHTMLConverter.getInstance().convert(document, out, options);
	}
	
	/**
	 * 2007版本word转换成html
	 * 
	 * @throws IOException
	 */
	private static void Word2007ToHtml(File f) throws IOException {
		//String filepath = "D:/test/";
		//String fileName = "test.docx";
		//String htmlName = "test.html";
		//final String file = filepath + fileName;
		//File f = new File(file);
		if (!f.exists()) {
			System.out.println("Sorry File does not Exists!");
		} else {
			if (f.getName().endsWith(".docx") || f.getName().endsWith(".DOCX")) {
				
				String image = "images";
				//String htmlImagePath = f.getParentFile().getPath() + WORD_2_HTML_PATH + image;
				//String htmlPath = f.getParentFile().getPath() + WORD_2_HTML_PATH + getFileName(f) + ".html";

				String htmlImagePath = Constants.WORD_2_HTML_PATH + "\\" + image;
				String htmlPath = Constants.WORD_2_HTML_PATH + "\\" + getFileName(f) + ".html";
				
				// 1) 加载word文档生成 XWPFDocument对象
				InputStream in = new FileInputStream(f);
				XWPFDocument document = new XWPFDocument(in);
				// 2) 解析 XHTML配置 (这里设置IURIResolver来设置图片存放的目录)
				File imageFolderFile = new File(htmlImagePath);
				XHTMLOptions options = XHTMLOptions.create().URIResolver(new BasicURIResolver(image));
				options.setExtractor(new FileImageExtractor(imageFolderFile));
				options.setIgnoreStylesIfUnused(false);
				options.setFragment(true);
				// 3) 将 XWPFDocument转换成XHTML
				OutputStream out = new FileOutputStream(new File(htmlPath));
				XHTMLConverter.getInstance().convert(document, out, options);

				// 也可以使用字符数组流获取解析的内容
				// ByteArrayOutputStream baos = new ByteArrayOutputStream();
				// XHTMLConverter.getInstance().convert(document, baos, options);
				// String content = baos.toString();
				// System.out.println(content);
				// baos.close();
			} else {
				System.out.println("Enter only MS Office 2007+ files");
			}
		}
	}

	public static void doc(final File f) throws Throwable {
		// 生成 HWPFDocument
		InputStream input = new FileInputStream(f);
		HWPFDocument wordDocument = new HWPFDocument(input);
		// 把图片放到文件绝对路径下image/word/media文件夹
		WordToHtmlConverter wordToHtmlConverter = new WordToHtmlConverter(
				DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument());
		wordToHtmlConverter.setPicturesManager(new PicturesManager() {
			public String savePicture(byte[] content, PictureType pictureType, String suggestedName, float widthInches,
					float heightInches) {
				// 与docx保持一致
				File imgFile = new File(Constants.WORD_2_HTML_PATH + "\\" + "image\\word\\media\\");
				if (!imgFile.exists()) {
					imgFile.mkdirs();
				}
				try {
					FileOutputStream out = new FileOutputStream(imgFile.getPath() + "\\" + suggestedName);
					out.write(content);
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}

				return Constants.WORD_2_HTML_PATH + "\\" + "image\\word\\media\\" + suggestedName;
			}
		});
		wordToHtmlConverter.processDocument(wordDocument);
		Document htmlDocument = wordToHtmlConverter.getDocument();
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		DOMSource domSource = new DOMSource(htmlDocument);
		StreamResult streamResult = new StreamResult(outStream);
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer serializer = tf.newTransformer();
		//System.getProperties().put("file.encoding", "utf-8");
		serializer.setOutputProperty(OutputKeys.ENCODING, "utf-8");//System.getProperty("file.encoding")
		serializer.setOutputProperty(OutputKeys.INDENT, "yes");
		serializer.setOutputProperty(OutputKeys.METHOD, "html");
		serializer.transform(domSource, streamResult);
		outStream.close();
		String content = new String(outStream.toByteArray());
		System.out.println(TAG + "doc content = " + content.toString());
		FileUtils.writeStringToFile(new File(Constants.WORD_2_HTML_PATH, getFileName(f) + ".html"), content, "utf-8");
		Constants.printEncoding();
	}
}
