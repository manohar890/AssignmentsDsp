package com.spring.SpringL2Assignment1;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext app=new AnnotationConfigApplicationContext(Config.class);
        
        List<StudentData> d1=(List<StudentData>) app.getBean("Bean1");
        
        StudentDao dao=new StudentDao();
        dao.getAllDetails(d1);
        dao.getDetails(d1, 3);
        
    }
}
