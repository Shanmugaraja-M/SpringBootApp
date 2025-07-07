package com.example.SBDemoPrg.Controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SBDemoPrg.Entity.StudentDetailsEntity;
import com.example.SBDemoPrg.Repository.StudentRepo;

@Controller
@RequestMapping("/student-details")
public class StudentController {

    @Autowired
    private StudentRepo studentrepo;

    @GetMapping("/home")
    public String home() {
        return "StdHomePage";
    }

    @GetMapping("/loginpage")
    public String loginPage() {
        return "loginpage";
    }

    @PostMapping("/submit")
    public String saveStudent(@RequestParam String name,
                              @RequestParam String rollNo,
                              @RequestParam String department,
                              Model model) {

        StudentDetailsEntity student = new StudentDetailsEntity();
        student.setName(name);
        student.setRollNo(rollNo);
        student.setDept(department);

        studentrepo.save(student);
        
        return "redirect:/student-details/getdetails";
    }

    @GetMapping("/getdetails")
    public String getDetails(Model model) {
        List<StudentDetailsEntity> students = studentrepo.findAll();
        model.addAttribute("students", students);
        return "homepage";
    }


    @GetMapping("/update")
    public String showUpdateForm(@RequestParam String rollNo, Model model) {
        Optional<StudentDetailsEntity> studentOpt = studentrepo.findByRollNo(rollNo);
        if (studentOpt.isPresent()) {
            model.addAttribute("student", studentOpt.get());
            return "updateForm";  // Your JSP page name
        } else {
            return "redirect:/student-details/getdetails";  // If student not found
        }
    }

    @PostMapping("/update-student")
    public String updateStudent(@RequestParam Long id,
                                @RequestParam String name,
                                @RequestParam String rollNo,
                                @RequestParam String dept) {

        Optional<StudentDetailsEntity> studentOpt = studentrepo.findById(id);
        if (studentOpt.isPresent()) {
            StudentDetailsEntity student = studentOpt.get();
            student.setName(name);
            student.setRollNo(rollNo);
            student.setDept(dept);
            studentrepo.save(student);
        }
        return "redirect:/student-details/getdetails";
    }


    @GetMapping("/delete")
    public String deleteStudent(@RequestParam String rollNo) {
        studentrepo.deleteByRollNo(rollNo);
        return "redirect:/student-details/getdetails";
    }




    @GetMapping("/StudentDetails")
    public List<StudentDetailsEntity> getAllStudents() {
        return studentrepo.findAll();
    }
}
