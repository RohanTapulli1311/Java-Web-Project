package com.crce.product;

import java.io.File;
import java.util.regex.Pattern;

public class cropname {
public static String cropp(String path) {
String[] path2=path.split(Pattern.quote(File.separator));
//for(int i=0;i<path2.length;i++) {
//	System.out.println(path2[i]);
//}
int l=path2.length;
return path2[l-1];
	
}
//public static void main(String[] args) {
//	String fname="C:\\textfiles\\db\\query\\query.txt";
//	cropp(fname);
//}
}
