package com.project17i.employee.collection;


import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Builder
@Document(collection = "grade")
public class Grade {
    @Id
    private String id;
    private String gradeValue;




}
