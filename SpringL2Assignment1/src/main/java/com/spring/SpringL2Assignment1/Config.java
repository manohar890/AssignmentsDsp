package com.spring.SpringL2Assignment1;



import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Config {
	
	@Bean(name = "Bean1")
	public List<StudentData> bean1() {
		List<StudentData> data=new ArrayList<StudentData>();
		StudentData d1= new StudentData(0,"Kohli","delhi");
		StudentData d2= new StudentData(1,"Sehwag","delhi");
		StudentData d3= new StudentData(2,"Yuvraj","Punjab");
		StudentData d4= new StudentData(3,"Rohit","Mumbai");
		StudentData d5= new StudentData(4,"Raina","Jharkand");
		StudentData d6= new StudentData(5,"Hardik","delhi");
		StudentData d7= new StudentData(6,"Krunal","delhi");
		StudentData d8= new StudentData(7,"Bumrah","Mumbai");
		StudentData d9= new StudentData(8,"Shami","delhi");
		StudentData d10= new StudentData(9,"Chahal","delhi");
		data.add(d1);data.add(d2);data.add(d3);data.add(d4);data.add(d5);
        data.add(d6);data.add(d7);data.add(d8);data.add(d9);data.add(d10);
        return data;
		
	}
	

}
