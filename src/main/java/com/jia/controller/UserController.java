package com.jia.controller;

import com.jia.pojo.Books;
import com.jia.pojo.User;
import com.jia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * User:侠客
 * Date:2022/2/9 17:56
 * Description:
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("toregister")
    public String toregister(){
        return "register";
    }

    @RequestMapping("/login")
    public String login(HttpServletResponse response,HttpSession session, User user, Model model) throws IOException{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        User user1 = userService.loginUser(user);
        if (user1!=null){
            System.out.println("登录成功!");
            out.write("<script>alert('登录成功！')</script>");
            out.flush();
            session.setAttribute("userLoginInfo",user.getUserName());
            session.setAttribute("userLoginInfoType",user.getType());
            return "allBook";
        }
        //out.write("<script>alert('用户名或密码错误！');</script>");
        out.write("<script>alert('用户名或密码错误，登录失败！')</script>");
        out.flush();
        System.out.println("登陆失败!");
        return "login";
    }

    @RequestMapping("/register")
    public String register(HttpServletResponse response,User user) throws IOException{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if (user.getUserName()!=null && user.getPassword()!=null && user.getEmail()!=null && user.getType()!=null) {
            userService.registUser(user);
            System.out.println("注册成功!");
            out.write("<script>alert('注册成功!');</script>");
            out.flush();
            return "redirect:/user/tologin";
        }
        else return "redirect:/user/toregister";
    }

    //退出登陆
    @RequestMapping("logout")
    public String logout(HttpSession session){
        // session 过期
        session.invalidate();
        return "login";
    }


    @RequestMapping("queryMyself")
    public String queryMyself(String userName,Model model){
        User user=userService.existUsername(userName);
        System.out.println(user);
        model.addAttribute("user",user);
        return "person";
    }

    @RequestMapping("updateUser")
    public String updateUser(User user){
        if(userService.updateUser(user)!=0)
            System.out.println("修改成功");
        return "allBook";
    }
}
