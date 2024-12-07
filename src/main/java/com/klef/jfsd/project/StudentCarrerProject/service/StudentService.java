package com.klef.jfsd.project.StudentCarrerProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.repo.StudentRepo;
@Service
public class StudentService {
	@Autowired
	private StudentRepo repo;
	public String StudentRegistration(Student student) {
		 repo.save(student);
		 return "registration completed";
	}

	public Student cheackStudentLogin(String email, String password) {
		return repo.checkstudentlogin(email,password);
	}
	
}
