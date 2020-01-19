package com.howtodoinjava.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.howtodoinjava.demo.EmployeeDAO;
import com.howtodoinjava.demo.EmployeeVO;

@Service
public class EmployeeManagerImpl implements EmployeeManager {
	@Autowired
    EmployeeDAO dao;
     
    public List<EmployeeVO> getAllEmployees() {
        return dao.getAllEmployees();
    }
}
