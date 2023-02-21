package com.project17i.employee.collection;

import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@Document(collection = "student")
public class Student {
    @Id
    private String id;
    private Grade grade;
    private String name;
    private EmployeeCollection teacher;
    private EmployeeCollection driver;
    private EmployeeCollection nonTeaching;
    private Parent parent;
    private AddressCollection address;

    //later


}
