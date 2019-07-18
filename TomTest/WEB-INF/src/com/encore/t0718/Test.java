package com.encore.t0718;

import java.io.FileWriter;

public class Test {
	public static void main(String[] args) {
		
		String str="Content-Disposition: form-data; name='myfile'; filename='31회차 1과목.txt'";
		int startIdx=str.lastIndexOf("=")+2;
		int endIdx=str.length()-1;
		
		
		System.out.println(str.substring(startIdx,endIdx));
	}

}
