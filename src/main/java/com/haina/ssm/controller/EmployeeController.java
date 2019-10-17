package com.haina.ssm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haina.ssm.bean.Department;
import com.haina.ssm.bean.Employee;
import com.haina.ssm.service.DepartmentService;
import com.haina.ssm.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService empService;
	@Autowired
	DepartmentService deptService;
	
	@RequestMapping("/emps")
	public String getAllEmployees(@RequestParam(value="pageNum",defaultValue="1") Integer pageNum,Map<String,Object> map) {
		//�˴����·��Ĳ�ѯ�ᱻ�����Զ���ҳ
		PageHelper.startPage(pageNum,1);
		List<Employee> empList = empService.getAllEmployees();
		//����ҳҳ�������������ݷ�װ��PageInfo����
		PageInfo pageInfo = new PageInfo(empList,5);
		map.put("pageInfo",pageInfo);
		return "list";
	}
	@RequestMapping(value="/emp/{empId}",method=RequestMethod.DELETE)
	public String deleteEmployeeById(@PathVariable("empId") Integer empId) {
		System.out.println("===============>Controller");
		empService.deleteEmployeeById(empId);
		return "redirect:/emps";
	}
	@RequestMapping(value="emp",method=RequestMethod.GET)
	public String addEmployeeFirtStep(Map<String,Object> map){
		//ע��ҳ����Ҫ�Ĳ�����Ϣ
		List<Department> deptList = deptService.getAllDepartments();
		map.put("deptList",deptList);
		//ע��ҳ����Ҫ���Ա���Ϣ
		List<String> genderList = new ArrayList<String>();
		genderList.add("��");
		genderList.add("Ů");
		genderList.add("����");
		genderList.add("Ů��");
		genderList.add("��ʿ");
		genderList.add("Ůʿ");
		map.put("genderList",genderList);
		
		map.put("myEmp",new Employee());
		
		return "register";
	}
	@RequestMapping(value="emp",method=RequestMethod.POST)
	public String saveEmployee(Employee emp) {
		empService.saveEmployee(emp);
		return "redirect:/emps";
	}
	
	
	
	

}










