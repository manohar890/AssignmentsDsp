package com.SpringL2Assignment;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;



/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
	ctx.register(DBConfig.class);
	ctx.refresh();
	StudentDao sdao = ctx.getBean(StudentDao.class);
    			//Get service from context. (service's dependency (ProductDAO) is autowired in ProductService)
    		
    		sdao.add(new StudentData(0,"Manohar","Nellore"));
    }
}
