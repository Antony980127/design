package com.school.request;

/**
 * @program: design
 * @description: 用户注册请求
 * @author: Antony
 * @create: 2019-04-16 09:29
 **/
public class RegisterUserRequest {
    private String username;
    private String password;
    private String headimg;
    private String instruction;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    @Override
    public String toString() {
        return "RegisterUser{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", headimg='" + headimg + '\'' +
                ", instruction='" + instruction + '\'' +
                '}';
    }
}
