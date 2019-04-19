package com.school.controller;

import com.school.entity.User;
import com.school.request.LoginUserRequest;
import com.school.request.RegisterUserRequest;
import com.school.request.UpdateUserInfoRequest;
import com.school.request.UpdateUserPassRequest;
import com.school.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 用户控制层
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("/index")
    public String index(HttpSession session){
        User u = (User)session.getAttribute("user");

        System.out.println("跳转主页");
        return "index";
    }

    /**
     * 用户注册
     */
    @RequestMapping("/register")
    private String register(@RequestBody RegisterUserRequest registerUser){
        System.out.println(registerUser.toString());
        return null;
    }

    /**
     * 用户登录
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST,produces = "application/json")
    private String login(User user, HttpSession session){
        System.out.println(user.toString());
        //查找用户
        User u = userService.findUserByUserName(user.getUsername());
        if (u != null){
            u.setPassword("");
            session.setAttribute("user",u);
            return "index";
        }

        return null;
    }

    /**
     * 修改密码
     */
    @RequestMapping(value = "/reSetPass",method = RequestMethod.POST,produces = "application/json")
    private String reSetPass(@Validated UpdateUserPassRequest userPassRequest,HttpSession session){
        User u = (User)session.getAttribute("user");
        System.out.println("session:"+u.toString());
        User nowUser = userService.findUserByUserName(u.getUsername());
        //判断旧密码是否一致
        if (nowUser.getPassword().equals(userPassRequest.getRepassword())){
            //可以修改
            System.out.println("可以修改");
            nowUser.setPassword(userPassRequest.getNewPassword());
            userService.updateUser(nowUser);
            return "person";
        }
        return null;
    }



    /**
     * 更新信息
     */
    @RequestMapping(value = "/updateUser",method =RequestMethod.POST,produces = "application/json" )
    private String updateUser(User user,HttpSession session){
        User u = (User)session.getAttribute("user");
        User nowUser = userService.findUserByUserName(u.getUsername());
        if (nowUser!=null){
            nowUser.setInstruction(user.getInstruction());
            userService.updateUser(nowUser);
            return "person";
        }
        System.out.println(user.toString());
        return null;
    }





}
