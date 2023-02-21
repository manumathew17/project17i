package com.project17i.parent.repository;

import com.project17i.parent.collection.ParentCollection;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface ParentRepository extends MongoRepository<ParentCollection, String> {
    List<ParentCollection> findByEmail(String email);


}
