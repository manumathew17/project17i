package com.project17i.parent.controller;


import com.project17i.parent.collection.ParentCollection;
import com.project17i.parent.service.interfaces.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/parent")
public class ParentController {

    @Autowired
    ParentService parentService;

    @PostMapping("/add")
    public String addParent(@RequestBody ParentCollection parentCollection) {
        return parentService.addParent(parentCollection);
    }


}
