package com.klef.jfsd.project.StudentCarrerProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.service.StudentService;

@RestController
public class StudentController {

    @Autowired
    private StudentService servies;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("studentRegistration")
    public ModelAndView studentRegistration() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentRegistration");
        return mv;
    }

    @GetMapping("studentLogin")
    public ModelAndView customerLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentLogin");
        return mv;
    }

    @PostMapping("insertStudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("gender");
        String dateofbirth = request.getParameter("dateofbirth");
        String email = request.getParameter("email");
        String locationme = request.getParameter("location");
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");

        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDataofbirth(dateofbirth);
        student.setEmail(email);
        student.setLocation(locationme);
        student.setContact(contact);
        student.setPassword(password);

        String message = servies.StudentRegistration(student);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentRegSuccus");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("cheakstudent")
    public ModelAndView cheakstudentlogin(HttpServletRequest request, HttpSession session) {
        ModelAndView mv = new ModelAndView();

        String email = request.getParameter("cname");
        String password = request.getParameter("password");
        Student ad = servies.cheackStudentLogin(email, password);
        if (ad != null) {
            session.setAttribute("student", ad); // Store the student object in the session
            mv.setViewName("studenthome");
            mv.addObject("name", ad);
        } else {
            mv.setViewName("studentlogfaill");
            mv.addObject("msg", "login failed!...........");
        }
        return mv;
    }

    @GetMapping("studenthome")
    public ModelAndView studenthome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studenthome");
        return mv;
    }

    @GetMapping("studentprofile")
    public ModelAndView studentprofile(HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        ModelAndView mv = new ModelAndView();
        if (student != null) {
            mv.addObject("student", student); // Pass the student object to the view
            mv.setViewName("studentprofile");
        } else {
            mv.setViewName("studentlogfaill"); // Redirect to login fail page if no session
        }
        return mv;
    }
}
