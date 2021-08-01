package com.javatpoint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javatpoint.model.Employee;
import com.javatpoint.service.EmployeeService;
@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employee;

	@RequestMapping("/")
	public String getHome() {
		return "home";
	}
	
	@RequestMapping("/addemp")
	public String addEmp(Model m) {
		m.addAttribute("command",new Employee());
		return "add-employee";
	}
	
	@PostMapping("/save")
	public String saveEmp(Employee emp,Model m) {
		Employee em=employee.editStudent(emp.getEid());
		if(em!=null) {
			m.addAttribute("error","Employee Id duplication Not Allowed...");
			m.addAttribute("command",em);
			return "add-employee";
		}
		employee.saveEmp(emp);
		return "forward:emplist";
	}
	
	@GetMapping("/url")
	public String showEmp() {
		return "list-emp";
	}
	
	@RequestMapping("/delete")
	public String deleteEmp(String eid) {
		employee.deleteStudent(eid);
		return "forward:emplist";
	}
	
	@RequestMapping("/edit")
	public String editEmp(String eid, Model m) {
		Employee em=employee.editStudent(eid);
		m.addAttribute("command",em);
		return "edit-employee";
	}
	
	@RequestMapping("/emplist")
	public String listEmp(Model m) {
		List<Employee> employees=employee.listEmp();
		m.addAttribute("list",employees);
		return "list-emp";
	}
	
	@RequestMapping("/update")
	public String updateEmp(Employee em) {
		employee.updateStudent(em);
		return "forward:emplist";
	}
	
}
