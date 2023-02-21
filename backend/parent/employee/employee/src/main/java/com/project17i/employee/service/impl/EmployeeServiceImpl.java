package com.project17i.employee.service.impl;

import com.project17i.employee.collection.EmployeeCollection;
import com.project17i.employee.repository.EmployeeRepository;
import com.project17i.employee.service.interfaces.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class EmployeeServiceImpl implements EmployeeServices {
    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public String addEmployee(EmployeeCollection employee) {
        //email validation
        String regex = "^(.+)@(.+)$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(employee.getEmail());
        if (employeeRepository.findByAdharNo(employee.getAdharNo()).size() > 0) {
            return "adhar is already used";
        } else if (matcher.matches()) {
            if (employeeRepository.findByEmail(employee.getEmail()).size() > 0) {
                return "user already registered with same email" + employee.getEmail();
            } else {
                return employeeRepository.save(employee).getId();
            }
        } else {
            return "enter valid email" + employee.getEmail();
        }
    }

}
