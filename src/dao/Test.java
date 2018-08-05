package dao;

import java.io.File;
import java.net.URL;

public class Test {
	public static void main(String[] args) {
		new Test();
	}
	
	String file = "dom4j.xml";

	public Test() {
		URL url = Test.class.getClassLoader().getResource(file);
		System.out.println("url = " + url + " path = " + url.getPath() + " file = " + url.getFile());
		File f = new File(url.getFile());
		System.out.println("f = " + f.exists());
	}
}
