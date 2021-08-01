package com.javatpoint.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.javatpoint.model.Employee;

@Service
public interface EmployeeService {

	void saveEmp(Employee employee);

	List<Employee> listEmp();

	void deleteStudent(String eid);

	Employee editStudent(String eid);

	void updateStudent(Employee em);
}
