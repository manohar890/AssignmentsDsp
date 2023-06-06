package com.spring.SpringL2Assignment1;

import java.util.List;

public class StudentDao {

	public void getAllDetails(List<StudentData> data) {
		System.out.println("Student Id\t"+"Student Name\t"+"Student Adress\n---------------------------------");
		data.stream().forEach(d->{System.out.println(d.getStudentId()+"\t\t"+
				d.getStudentName()+"\t\t"+d.getStudentAddress());
		System.out.println("_____________________________________________");});
		System.out.println("***********************************************");
				
	}
	public void getDetails(List<StudentData> data,int id) {
		System.out.println("Student Id\t"+"Student Name\t"+"Student Adress\n---------------------------------");
		data.stream().filter(d->d.getStudentId()==id).forEach(d->System.out.println(d.getStudentId()+"\t\t"+
		d.getStudentName()+"\t\t"+d.getStudentAddress()+"\n____________________________________"));
	}
}
