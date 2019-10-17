package com.haina.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haina.ssm.bean.Employee;
import com.haina.ssm.dao.EmployeeMapper;

@Service
public class EmployeeService {
	@Autowired
	EmployeeMapper empMapper;
	
	public List<Employee> getAllEmployees(){
		return empMapper.selectEmployeesWithDept();
	}
	public void deleteEmployeeById(int empId) {
		empMapper.deleteByPrimaryKey(empId);
	}
	
	public void saveEmployee(Employee emp) {
		empMapper.insert(emp);
	}
	

}










