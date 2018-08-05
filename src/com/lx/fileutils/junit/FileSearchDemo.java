package com.lx.fileutils.junit;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.FileSystems;
import java.util.Date;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.DateTools;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.FuzzyQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.PrefixQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.WildcardQuery;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.search.highlight.SimpleSpanFragmenter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.pdfbox.pdfparser.PDFParser;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.wltea.analyzer.lucene.IKAnalyzer;

import com.lx.fileutils.Constants;
import com.lx.fileutils.FileUtil;

/**
 * 基于Lucene5.5.4的文件搜索demo
 * 
 * @author liuxianan
 * @date 2017-05-02
 */
public class FileSearchDemo {

	/**
	 * 创建索引
	 */
	public void creatIndex() {
		IndexWriter indexWriter = null;
		try {
			Directory directory = FSDirectory.open(FileSystems.getDefault().getPath(Constants.INDEX_PATH));
			Analyzer analyzer = new StandardAnalyzer();
			//Analyzer analyzer = new IKAnalyzer(true);
			IndexWriterConfig indexWriterConfig = new IndexWriterConfig(analyzer);
			indexWriter = new IndexWriter(directory, indexWriterConfig);
			indexWriter.deleteAll();// 清除以前的index
			// 获取被扫描目录下的所有文件，包括子目录
			/*
			 * List<File> files = FileUtil.listAllFiles(SCAN_PATH); for(int i=0;
			 * i<files.size(); i++) { Document document = new Document(); File file =
			 * files.get(i); document.add(new Field("content",
			 * FileUtil.readFile(file.getAbsolutePath()), TextField.TYPE_STORED));
			 * document.add(new Field("fileName", file.getName(), TextField.TYPE_STORED));
			 * document.add(new Field("filePath", file.getAbsolutePath(),
			 * TextField.TYPE_STORED)); document.add(new Field("updateTime",
			 * file.lastModified()+"", TextField.TYPE_STORED));
			 * indexWriter.addDocument(document); }
			 */

			// 获取所有需要建立索引的文件
			File[] files = new File(Constants.SCAN_PATH).listFiles();
			if (files != null) {
				for (int i = 0; i < files.length; i++) {
					if (files[i] == null || files[i].isDirectory()) {
						continue;
					}
					// 文件是第几个
					System.out.println("这是第" + i + "个文件----------------");
					// 文件的完整路径
					System.out.println("完整路径：" + files[i].toString());
					// 获取文件名称
					String fileName = files[i].getName();
					// 获取文件后缀名，将其作为文件类型
					String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length())
							.toLowerCase();
					// 文件名称
					System.out.println("文件名称：" + fileName);
					// 文件类型
					System.out.println("文件类型：" + fileType);

					Document doc = new Document();

					// String fileCode = FileType.getFileType(files[i].toString());
					// 查看各个文件的文件头标记的类型
					// System.out.println("fileCode=" + fileCode);

					InputStream in = new FileInputStream(files[i]);
					InputStreamReader reader = null;

					if (fileType != null && !fileType.equals("")) {

						if (fileType.equals("doc")) {
							// 获取doc的word文档
							WordExtractor wordExtractor = new WordExtractor(in);
							// 创建Field对象，并放入doc对象中
							// Field的各个字段含义如下：
							// 第1个参数是设置field的name，
							// 第2个参数是value，value值可以是文本（String类型，Reader类型或者是预分享的TokenStream）,
							// 二进制（byet[]）, 或者是数字（一个 Number类型）
							// 第3个参数是Field.Store，选择是否存储，如果存储的话在检索的时候可以返回值
							// 第4个参数是Field.Index，用来设置索引方式
							doc.add(new Field("contents", wordExtractor.getText(), Field.Store.YES,
									Field.Index.ANALYZED));
							// 关闭文档
							wordExtractor.close();
							System.out.println("注意：已为文件“" + fileName + "”创建了索引");

						} else if (fileType.equals("pdf")) {
							// 获取pdf文档
							PDFParser parser = new PDFParser(in);
							parser.parse();
							PDDocument pdDocument = parser.getPDDocument();
							PDFTextStripper stripper = new PDFTextStripper();
							// 创建Field对象，并放入doc对象中
							doc.add(new Field("contents", stripper.getText(pdDocument), Field.Store.NO,
									Field.Index.ANALYZED));
							// 关闭文档
							pdDocument.close();
							System.out.println("注意：已为文件“" + fileName + "”创建了索引");

						} else if (fileType.equals("txt")) {
							/*
							 * // 建立一个输入流对象reader reader = new InputStreamReader(in); //
							 * 建立一个对象，它把文件内容转成计算机能读懂的语言 BufferedReader br = new BufferedReader(reader);
							 * String txtFile = ""; String line = null;
							 * 
							 * while ((line = br.readLine()) != null) { // 一次读入一行数据 txtFile += line; } //
							 * 创建Field对象，并放入doc对象中 doc.add(new Field("contents", txtFile, Field.Store.YES,
							 * Field.Index.ANALYZED));
							 */
							doc.add(new Field("contents", FileUtil.readFile(files[i].getAbsolutePath()),
									TextField.TYPE_STORED));
							System.out.println("注意：已为文件“" + fileName + "”创建了索引");

						} else {

							System.out.println();
							continue;

						}

					}
					// 创建文件名的域，并放入doc对象中
					doc.add(new Field("fileName", files[i].getName(), Field.Store.YES, Field.Index.NOT_ANALYZED));
					doc.add(new Field("filePath", files[i].getAbsolutePath(), TextField.TYPE_STORED));
					// doc.add(new Field("updateTime", files[i].lastModified()+"",
					// TextField.TYPE_STORED));
					// 创建时间的域，并放入doc对象中
					doc.add(new Field("indexDate", DateTools.dateToString(new Date(), DateTools.Resolution.DAY),
							Field.Store.YES, Field.Index.NOT_ANALYZED));
					// 写入IndexWriter
					indexWriter.addDocument(doc);
					// 换行
					System.out.println();
				}

				// for (int i = 0; i < files.length; i++) {
				// if (files[i] == null || files[i].isDirectory()) {
				// continue;
				// }
				// // 文件是第几个
				// System.out.println("这是第" + i + "个文件----------------");
				// // 文件的完整路径
				// System.out.println("完整路径：" + files[i].toString());
				// // 获取文件名称
				// String fileName = files[i].getName();
				// // 获取文件后缀名，将其作为文件类型
				// String fileType = fileName.substring(fileName.lastIndexOf(".") + 1,
				// fileName.length())
				// .toLowerCase();
				// // 文件名称
				// System.out.println("文件名称：" + fileName);
				// // 文件类型
				// System.out.println("文件类型：" + fileType);
				//
				// if (fileType != null && !fileType.equals("")) {
				// if (fileType.equals("doc")) {
				// try {
				// Word2Html.toHtml(files[i].getParent(), files[i].getName());
				// } catch (Throwable e) {
				// // TODO Auto-generated catch block
				// e.printStackTrace();
				// }
				// } else if (fileType.equals("docx")) {
				// try {
				// Word2Html.toHtml(files[i].getParent(), files[i].getName());
				// } catch (Throwable e) {
				// // TODO Auto-generated catch block
				// e.printStackTrace();
				// }
				// } else if (fileType.equals("pdf")) {
				// } else if (fileType.equals("txt")) {
				// } else {
				// System.out.println();
				// continue;
				// }
				// }
				// }
			}
			// 查看IndexWriter里面有多少个索引
			System.out.println("numDocs=" + indexWriter.numDocs());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (indexWriter != null)
					indexWriter.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 搜索
	 */
	public String search(String keyWord) {
		creatIndex();
		StringBuffer buffer = new StringBuffer();
		DirectoryReader directoryReader = null;
		try {
			// 1、创建Directory
			Directory directory = FSDirectory.open(FileSystems.getDefault().getPath(Constants.INDEX_PATH));
			// 2、创建IndexReader
			directoryReader = DirectoryReader.open(directory);
			// 3、根据IndexReader创建IndexSearch
			IndexSearcher indexSearcher = new IndexSearcher(directoryReader);
			// 4、创建搜索的Query
			Analyzer analyzer = new StandardAnalyzer();
			//Analyzer analyzer = new IKAnalyzer(true); // 使用IK分词

			// 简单的查询，创建Query表示搜索域为content包含keyWord的文档
			Query query = new QueryParser("contents", analyzer).parse(keyWord);

			String[] fields = { "fileName", "contents" }; // 要搜索的字段，一般搜索时都不会只搜索一个字段
			// 字段之间的与或非关系，MUST表示and，MUST_NOT表示not，SHOULD表示or，有几个fields就必须有几个clauses
			BooleanClause.Occur[] clauses = { BooleanClause.Occur.SHOULD, BooleanClause.Occur.SHOULD };
			// MultiFieldQueryParser表示多个域解析， 同时可以解析含空格的字符串，如果我们搜索"上海 中国"
			Query multiFieldQuery = MultiFieldQueryParser.parse(keyWord, fields, clauses, analyzer);

			// 5、根据searcher搜索并且返回TopDocs
			TopDocs topDocs = indexSearcher.search(multiFieldQuery, 100); // 搜索前100条结果
			buffer.append("共找到匹配处：" + topDocs.totalHits + "\n");
			System.out.println("共找到匹配处：" + topDocs.totalHits); // totalHits和scoreDocs.length的区别还没搞明白
			// 6、根据TopDocs获取ScoreDoc对象
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			buffer.append("共找到匹配文档数：" + scoreDocs.length + "\n");
			System.out.println("共找到匹配文档数：" + scoreDocs.length);

			QueryScorer scorer = new QueryScorer(multiFieldQuery, "contents");
			// 自定义高亮代码
			SimpleHTMLFormatter htmlFormatter = new SimpleHTMLFormatter("<font color='red'>", "</font>"); //<span style=\"backgroud:red\">", "</span>
			Highlighter highlighter = new Highlighter(htmlFormatter, scorer);
			highlighter.setTextFragmenter(new SimpleSpanFragmenter(scorer));
			for (ScoreDoc scoreDoc : scoreDocs) {
				// 7、根据searcher和ScoreDoc对象获取具体的Document对象
				Document document = indexSearcher.doc(scoreDoc.doc);
				// TokenStream tokenStream = new SimpleAnalyzer().tokenStream("content", new
				// StringReader(content));
				// TokenSources.getTokenStream("content", tvFields, content, analyzer, 100);
				// TokenStream tokenStream =
				// TokenSources.getAnyTokenStream(indexSearcher.getIndexReader(), scoreDoc.doc,
				// "content", document, analyzer);
				// System.out.println(highlighter.getBestFragment(tokenStream, content));
				System.out.println("-------------------- begin ---------------------");
				System.out.println(document.get("fileName") + ":" + document.get("filePath"));
				System.out.println(highlighter.getBestFragment(analyzer, "contents", document.get("contents")));
				System.out.println("-------------------- end   ---------------------");

				buffer.append("<br/> 文件名  : " + document.get("fileName"));
				//buffer.append("<br/> 路径:" + document.get("filePath"));
				buffer.append("<br/> 内    容  : " + highlighter.getBestFragment(analyzer, "contents", document.get("contents"))
						+ "<br/>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (directoryReader != null)
					directoryReader.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return buffer.toString();
	}

	public static void main(String args[]) {
		FileSearchDemo demo = new FileSearchDemo();
		demo.creatIndex();
		System.out.println("\n\n\n\n\n\n\n++++++++++++++++++++ 机械----- begin");
		demo.search("机械");
		System.out.println("++++++++++++++++++++ 机械 ----- end\n\n\n\n\n\n\n");
		System.out.println("++++++++++++++++++++ 机----- begin");
		demo.search("机");
		System.out.println("++++++++++++++++++++ 机----- end\n\n\n\n\n\n\n");
		System.out.println("++++++++++++++++++++ 械----- begin");
		demo.search("械");
		System.out.println("++++++++++++++++++++ 械----- end");
	}
}