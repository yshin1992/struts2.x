package com.convertor;

import java.lang.reflect.Member;
import java.util.Map;

import com.bean.Person;

import ognl.DefaultTypeConverter;

/*
 * 基于ognl.DefaultTypeConverter定义的转换器
 */
public class MyConvertor extends DefaultTypeConverter {

	//类型转换必须实现convertValue方法，并且这个方法实现必须是双向的
	@Override
	public Object convertValue(Map context, Object target, Member member,
			String propertyName, Object value, Class toType) {
		// TODO Auto-generated method stub
		if(toType==Person.class){
			//这里假定只传递一个形如"yang,22"的字符串
			String[] param=(String[])value;//这里的value会以一个字符串的形式传递过来
			String[] splitParam=param[0].split(",");
			Person user=new Person();
			user.setName(splitParam[0]);
			user.setAge(Integer.parseInt(splitParam[1]));
			return user;
		}
		else if(toType==String.class){
			Person user=(Person)value;
			return "<"+user.getName()+"/"+user.getAge()+">";
		}
		return null;
	}

}
