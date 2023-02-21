package com.project17i.parent.service.impl;

import com.project17i.parent.collection.ParentCollection;
import com.project17i.parent.repository.ParentRepository;
import com.project17i.parent.service.interfaces.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


@Service
public class ParentServiceImpl implements ParentService {

    @Autowired
    ParentRepository parentRepository;

    @Override
    public String addParent(ParentCollection parent) {
        //email validation
        String regex = "^(.+)@(.+)$";
        Pattern pattern = Pattern.compile(regex);

        Matcher matcher = pattern.matcher(parent.email);
        if (matcher.matches()) {
            if (parentRepository.findByEmail(parent.getEmail()).size() > 0) {
                return "user already registered with same email" + parent.email;
            } else {
                return parentRepository.save(parent).getId();
            }
        } else {
            return "enter valid email" + parent.email;
        }

    }
}
