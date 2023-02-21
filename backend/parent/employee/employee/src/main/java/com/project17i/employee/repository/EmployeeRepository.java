package com.project17i.employee.repository;

import com.project17i.employee.collection.EmployeeCollection;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface EmployeeRepository extends MongoRepository<EmployeeCollection, String> {
    List<EmployeeCollection> findByAdharNo(String adhar);

    List<EmployeeCollection> findByEmail(String email);

    List<EmployeeCollection> findByMobileNo(String mobileNo);

}
