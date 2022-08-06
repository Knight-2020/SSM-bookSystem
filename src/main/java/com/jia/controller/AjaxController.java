package com.jia.controller;

import com.jia.pojo.User;
import com.jia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * User:侠客
 * Date:2022/2/9 17:56
 * Description:
 */
@RestController
public class AjaxController {
    @Autowired
    @Qualifier("UserServiceImpl")
    UserService userService;

    @RequestMapping("/zc")
    public String ajax3(String name){
        String msg = "3";
        User user = userService.existUsername(name);
        if (name==""){
            System.out.println("444444444msg---->"+msg);
            msg="2";
            return msg;
        }
        else {
            if (user != null) {
                System.out.println("11111111111msg---->" + msg);
                msg = "1";
                return msg;
            } else {
                System.out.println("22222222msg---->" + msg);
                msg = "3";
                return msg;
            }
        }
    }
}
