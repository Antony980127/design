package com.school.controller;

import com.school.entity.User;
import com.school.request.LoginUserRequest;
import com.school.request.RegisterUserRequest;
import com.school.request.UpdateUserInfoRequest;
import com.school.request.UpdateUserPassRequest;
import com.school.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    private String login( User user){
        System.out.println(user.toString());
        return null;
    }

    /**
     * 修改密码
     */
    @RequestMapping(value = "/reSetPass",method = RequestMethod.POST,produces = "application/json")
    private String reSetPass(@Validated User user){

        System.out.println(user.toString());

        return "person";
    }
    /**
     * 更新信息
     */
    @RequestMapping(value = "/updateUser",method =RequestMethod.POST,produces = "application/json" )
    private String updateUser(@RequestBody UpdateUserInfoRequest updateUserInfo){
        System.out.println(updateUserInfo.toString());
        return null;
    }





}
