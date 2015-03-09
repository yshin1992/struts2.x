package com.convertor;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.bean.Person;

/*
 * 基于StrutsTypeConverter定义的转换器
 */
public class MyStrutsConvertor extends StrutsTypeConverter {

	@Override
	public Object convertFromString(Map arg0, String[] value, Class toClass) {
		if(toClass==Person.class){
			Person user=new Person();
			String[] values=value[0].split(",");
			user.setName(values[0]);
			user.setAge(Integer.parseInt(values[1]));
			return user;
		}
		
		return null;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		if(arg1 instanceof Person){
			Person user=(Person)arg1;
			return "("+user.getName()+":"+user.getAge()+")";
		}
		return null;
	}

}
