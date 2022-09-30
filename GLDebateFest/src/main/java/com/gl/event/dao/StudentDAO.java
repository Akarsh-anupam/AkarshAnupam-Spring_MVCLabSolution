package com.gl.event.dao;

import java.util.List;

import com.gl.event.model.Student;

public interface StudentDAO {

	public void addStudent(Student student);
	public void deleteStudent(int id);
	public Student findById(int id);
	public List<Student> getAllStudent();
	
}
