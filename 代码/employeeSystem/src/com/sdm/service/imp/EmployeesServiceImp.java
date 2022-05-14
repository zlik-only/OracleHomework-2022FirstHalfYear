package com.sdm.service.imp;

import java.util.List;

import com.sdm.entity.Employees;
import com.sdm.mapper.EmployeeMapper;
import com.sdm.service.EmployeesService;

public class EmployeesServiceImp implements EmployeesService {

	EmployeeMapper employeeMapper = new EmployeeMapper();

	@Override
	public List<Employees> employeeInfo() {
		return employeeMapper.selectAll();
	}

	@Override
	public int employeeAdd(Employees e) {
		return employeeMapper.insert(e);
	}

	@Override
	public int employeeUpdate(Employees e) {
		return employeeMapper.updateById(e);
	}

	@Override
	public int employeeDelete(int id) {
		return employeeMapper.deleteById(id);
	}

	@Override
	public int login(int id, String pwd) {
		//调用mapper层的方法进行条件查询
		return 0;
	}
	
	
}
