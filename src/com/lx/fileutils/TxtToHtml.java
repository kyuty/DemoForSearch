package com.lx.fileutils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

public class TxtToHtml {

	/**
	 * The encoding of the source files (.java and .jsp). Once they use UTF-8, this
	 * will need to be updated.
	 */
	private static final String SOURCE_ENCODING = "UTF-8";

	/**
	 * Line terminator to be used for separating lines of the generated HTML page,
	 * to be independent from "line.separator" system property.
	 */
	private static final String LINE_SEPARATOR = "\r\n";

	/**
	 * Perform the actual copy and conversion
	 *
	 * @param from
	 *            The input file
	 * @param to
	 *            The output file
	 * @throws IOException
	 *             Thrown if an error occurs during the conversion
	 */
	public static void convert(File from, File to) throws IOException {
		// Open files:
		try (BufferedReader in = new BufferedReader(
				new InputStreamReader(new FileInputStream(from), SOURCE_ENCODING))) {
			try (PrintWriter out = new PrintWriter(new OutputStreamWriter(new FileOutputStream(to), "UTF-8"))) {

				// Output header:
				out.print("<!DOCTYPE html><html><head><meta charset=\"UTF-8\" />"
						+ "<title>Source Code</title></head><body><pre>");

				// Convert, line-by-line:
				String line;
				while ((line = in.readLine()) != null) {
					StringBuilder result = new StringBuilder();
					int len = line.length();
					for (int i = 0; i < len; i++) {
						char c = line.charAt(i);
						switch (c) {
						case '&':
							result.append("&amp;");
							break;
						case '<':
							result.append("&lt;");
							break;
						default:
							result.append(c);
						}
					}
					out.print(result.toString() + LINE_SEPARATOR);
				}

				// Output footer:
				out.print("</pre></body></html>");

			}
		}
	}
	
	public static void main(String[] args) {
		String txtFilePath = Constants.SCAN_PATH + File.separator + "3.txt";
		String toHtmlPath = Constants.WORD_2_HTML_PATH + File.separator + "3.txt.html";
		try {
			File file = new File(Constants.WORD_2_HTML_PATH);
			if (!file.exists()) {
				file.mkdirs();
			}
			file = new File(toHtmlPath);
			if (file.exists()) {
				file.delete();
			}
			convert(new File(txtFilePath), new File(toHtmlPath));			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
	}
}
