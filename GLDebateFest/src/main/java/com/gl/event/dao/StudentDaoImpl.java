package com.gl.event.dao;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gl.event.model.Student;

@Repository
public class StudentDaoImpl implements StudentDAO {

	@Autowired
	SessionFactory factory;
	@Override
	@Transactional
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(student);
	}

	@Override
	@Transactional
	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		session.delete(session.get(Student.class, id));

	}

	@Override
	@Transactional
	public Student findById(int id) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		System.out.println(session.get(Student.class, id));
		return session.get(Student.class, id);
	}
	
	@Override
	@Transactional
	public List<Student> getAllStudent()
	{
		Session session = factory.getCurrentSession();
		Query myQuery = session.createQuery("from Student");
		return myQuery.getResultList();
	}

}
