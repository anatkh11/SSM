package com.haina.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haina.ssm.bean.Department;
import com.haina.ssm.dao.DepartmentMapper;

@Service
public class DepartmentService {
	@Autowired
	DepartmentMapper deptMapper;
	
	public List<Department> getAllDepartments(){
		return  deptMapper.selectByExample(null);
	}

}












