package com.project17i.employee.collection;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Data
@Builder
@Document(collection = "employee")

public class EmployeeCollection {
    @Id
    private String id;
    private String firstName;
    private String lastName;
    private String gender;
    private String email;
    private String role;
    private String education;
    private String doj;
    private String adharNo;
    private String pan;
    private String dob;
    private String occupation;
    private ArrayList<String> mobileNo;
    private AddressCollection permanentAddress;
    private AddressCollection temporaryAddress;
    @DBRef
    private Set<EmployeeRoles> roles = new HashSet<>();







}

