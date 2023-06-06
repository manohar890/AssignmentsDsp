package com.SpringL2Assignment;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class StudentDao {
	@Autowired
	 HibernateTemplate template;
	 public void setTemplate(HibernateTemplate template) {
		 this.template=template;
	 }


	public void add(StudentData data) {
		template.persist(data);
	}

}
