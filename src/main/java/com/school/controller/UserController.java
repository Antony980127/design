package com.school.controller;

import com.school.request.LoginUserRequest;
import com.school.request.RegisterUserRequest;
import com.school.request.UpdateUserInfoRequest;
import com.school.request.UpdateUserPassRequest;
import com.school.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户控制层
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("/index")
    public String index(){

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
    @RequestMapping("/login")
    private String login(@RequestBody LoginUserRequest loginUser){
        System.out.println(loginUser.toString());
        return null;
    }

    /**
     * 修改密码
     */
    @RequestMapping("/reSetPass")
    private String reSetPass(@RequestBody UpdateUserPassRequest updateUserPass){
        System.out.println(updateUserPass.toString());
        return null;
    }
    /**
     * 更新信息
     */
    @RequestMapping("/updateUser")
    private String updateUser(@RequestBody UpdateUserInfoRequest updateUserInfo){
        System.out.println(updateUserInfo.toString());
        return null;
    }




}
