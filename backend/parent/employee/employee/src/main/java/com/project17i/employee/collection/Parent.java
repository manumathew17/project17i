package com.project17i.employee.collection;

import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;

@Data
@Builder
@Document(collection = "parent")
public class Parent {
    @Id
    private String id;
    private String firstName;
    private String lastName;
    private String gender;
    private String email;
    private String education;
    private String occupation;
    private ArrayList<String> mobileNo;
    private AddressCollection permanentAddress;
    private AddressCollection temporaryAddress;
}
