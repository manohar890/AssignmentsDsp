package com.spring.SpringL2Assignment2;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.spring.SpringL2Assignment2.dao.StudentDao;
import com.spring.SpringL2Assignment2.model.StudentData;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
Resource ctx =  new ClassPathResource("applicationContext.xml");
BeanFactory bf=new XmlBeanFactory(ctx);
		
		//Get service from context. (service's dependency (ProductDAO) is autowired in ProductService)
	StudentDao	sdao = (StudentDao) bf.getBean("d");
	sdao.add(new StudentData(0,"Manohar","Nellore"));
		
    }
}
