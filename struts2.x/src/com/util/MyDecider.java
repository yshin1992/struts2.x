package com.util;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

public class MyDecider implements Decider {

	/*
	 * (non-Javadoc)
	 * @see org.apache.struts2.util.SubsetIteratorFilter.Decider#decide(java.lang.Object)
	 * 为subset标签提供截取目标集合的规则
	 */
	@Override
	public boolean decide(Object arg0) throws Exception {
		// TODO Auto-generated method stub
		String str=(String)arg0;
		return str.indexOf("Java")>0;
	}

}
