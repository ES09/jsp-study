package test.jsp.study.test;

import java.util.HashMap;
import java.util.Map;

public class Exam1 {

	public static void main(String[] args) {
		String[] strs = new String[3];
		System.out.println(strs[0]==null); // equals 아님
		Map<String,String[]> map = new HashMap<>();
		map.put("id", strs);
	}
}
