package com.gl.event.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.event.dao.StudentDAO;
import com.gl.event.model.Student;


@Controller
@RequestMapping("students")
public class StudentController {

	@Autowired
	StudentDAO studentDAO;
	
	@GetMapping("home")
	public String homePage()
	{
		return "index";
	}
	
	@GetMapping("list")
	public String student_list(Model model)
	{
		List<Student> students = studentDAO.getAllStudent();
		model.addAttribute("students", students);
		return "student-list";
	}
	
	@GetMapping("showForm")
	public String showStudentForm(Model model)
	{
		Student newStudent = new Student();
		model.addAttribute("student",newStudent);
		return "student-form";
	}
	
	@PostMapping("save")
	public String saveStudent(Model model, @ModelAttribute("student")Student student)
	{
		studentDAO.addStudent(student);
		return "redirect:/students/list";
	}
	
	@GetMapping("update")
	public String updateStudent(Model model, @RequestParam("id")int id)
	{
		Student tempStudent = studentDAO.findById(id);
		model.addAttribute("student",tempStudent);
		return "student-form";
	}
	
	@GetMapping("delete")
	public String deleteStudent(Model model, @RequestParam("id")int id)
	{
		studentDAO.deleteStudent(id);
		return "redirect:/students/list";
	}
	
	
}
