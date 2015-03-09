package com.convertor;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.util.StrutsTypeConverter;

import com.bean.Person;

public class MyStrutsSetConvertor extends StrutsTypeConverter{

	@Override
	public Object convertFromString(Map arg0, String[] value, Class toClass) {
		Set users=new HashSet();
		for(int i=0;i<value.length;i++){
			Person user=new Person();
			String[] param=value[i].split(",");
			user.setName(param[0]);
			user.setAge(Integer.parseInt(param[1]));
			users.add(user);
		}
		return users;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		StringBuilder builder=new StringBuilder();
		if(arg1 instanceof Set){
			Set set=(HashSet)arg1;
			for(Object user:set){
				Person p=(Person)user;
				builder.append("(").append(p.getName()).append(":").append(p.getAge()).append(")");
			}
		}
		return builder.toString();
	}

}
