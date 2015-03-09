package com.util;

import java.util.Comparator;

public class MyComparator implements Comparator {
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 * 为sort标签自定义一个comparator
	 */
	@Override
	public int compare(Object o1, Object o2) {
		/*
		 * 这里只定义了一个简单的规则：根据字符串的长度
		 */
		return o1.toString().length()-o2.toString().length();
	}

}
