package com.school.request;

/**
 * @program: design
 * @description: 更新用户信息
 * @author: Antony
 * @create: 2019-04-16 09:27
 **/
public class UpdateUserInfoRequest {
    private String username;
    private String password;
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

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    @Override
    public String toString() {
        return "UpdateUserInfo{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", instruction='" + instruction + '\'' +
                '}';
    }
}
