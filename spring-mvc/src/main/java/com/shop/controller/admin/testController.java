package com.shop.controller.admin;

import org.springframework.web.bind.annotation.RequestMapping;

public class testController {
    @RequestMapping("/abc")
    public String test(){
        return "admin/NewFile";
}
}