package com.project17i.employee.controller;


import com.project17i.employee.collection.EmployeeCollection;
import com.project17i.employee.service.impl.EmployeeServiceImpl;
import com.project17i.employee.service.interfaces.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeServices employeeServices;

    @PostMapping("/add")
    public String addEmployee(@RequestBody EmployeeCollection employeeCollection) {
        return employeeServices.addEmployee(employeeCollection);
    }

    @GetMapping("/getAllEmployee")
    public String getAllEmployee(@PathVariable(required = false, name = "apiKey") String apiKey) {
           return "kjnte0";
    }


}
