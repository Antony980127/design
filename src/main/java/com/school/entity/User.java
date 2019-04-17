package com.school.entity;

import java.io.Serializable;

/**
 * 用户实体
 */
public class User implements Serializable {

    private String id;

    private String username;//用户名

    private String password;//密码

    private String headimg;//头像地址

    private String instruction;//简介

    public User() {
    }

    public User(String id, String username, String password, String headimg, String instruction) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.headimg = headimg;
        this.instruction = instruction;
    }

    public String getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getHeadimg() {
        return headimg;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", headimg='" + headimg + '\'' +
                ", instruction='" + instruction + '\'' +
                '}';
    }
}
