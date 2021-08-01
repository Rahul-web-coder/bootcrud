package com.javatpoint.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javatpoint.model.Employee;
import com.javatpoint.repository.EmployeeDao;

@Service
public class EmployeeServiceimpl implements EmployeeService {

	@Autowired
	private EmployeeDao dao;
	public void saveEmp(Employee employee) {
		dao.save(employee);
		
	}
	
	public List<Employee> listEmp() {
		List<Employee> employee = dao.findAll();
		return employee;
	}

	public void deleteStudent(String eid) {
		dao.deleteById(eid);
		
	}
	public Employee editStudent(String eid) {
		Employee em=dao.findById(eid).orElse(null);
		return em;
	}

	public void updateStudent(Employee em) {
		dao.save(em);
		
	}

}
