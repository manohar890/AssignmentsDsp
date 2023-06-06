package com.spring.SpringL2Assignment2.dao;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.SpringL2Assignment2.model.StudentData;

public class StudentDao {
	
	 HibernateTemplate template;
	 public void setTemplate(HibernateTemplate template) {
		 this.template=template;
	 }


	public void add(StudentData data) {
		template.persist(data);
	}

}
