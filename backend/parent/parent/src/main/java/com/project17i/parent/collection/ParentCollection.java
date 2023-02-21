package com.project17i.parent.collection;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;

@Data
@Builder
@Document(collection = "parent")
@JsonInclude(JsonInclude.Include.NON_NULL)

public class ParentCollection {
    @Id
    public String id;
    public String email;
    public String firstName;
    public String lastName;
    public String gender;
    public String role;
    public String education;
    public String dob;
    public String occupation;
    public ArrayList<String> mobileNo;
    public ArrayList<Address> address;
    public ArrayList<String> childrenId;


    private static class Address {
        public String addressLine1;
        public String addressLine2;
        public String state;
        public String country;
        public String pinCode;
        public Boolean isPrimary;
    }


}
