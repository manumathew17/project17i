package com.project17i.employee.collection;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Builder
public class AddressCollection {
    @Id
    private String id;
    private String addressLine1;
    private String addressLine2;
    private String state;
    private String country;
    private String pinCode;
    private Boolean isPrimary;
}
