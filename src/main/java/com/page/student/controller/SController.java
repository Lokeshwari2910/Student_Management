package com.page.student.controller;

import com.page.student_model.SModel;
import com.page.student_repository.Repo;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class SController {

    @Autowired
    private Repo repo;

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String doLogin(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("lokesh".equals(username) && "cseirtt".equals(password)) {
            return "redirect:/home";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    @GetMapping("/home")
    public String home() {
        return "index";
    }

    @PostMapping("/submit")
    public String submit(SModel student) {
        repo.save(student);
        return "redirect:/students";
    }
     
        
    @GetMapping("/students")
    public String viewStudents(HttpServletRequest request) {
        List<SModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "view";
    }

    @GetMapping("/students/edit/{rollno}")
    public String editStudent(@PathVariable int rollno, Model model) {
        SModel student = repo.findById(rollno)
            .orElseThrow(() -> new IllegalArgumentException("Invalid roll number: " + rollno));
        model.addAttribute("student", student);
        return "editStudent";
    }

    @PostMapping("/students/update")
    public String updateStudent(@ModelAttribute SModel student) {
        repo.save(student);
        return "redirect:/students";
    }

    @GetMapping("/students/delete/{rollno}")
    public String deleteStudent(@PathVariable int rollno) {
        repo.deleteById(rollno);
        return "redirect:/students";
    }
}
