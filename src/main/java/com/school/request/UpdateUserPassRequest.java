package com.school.request;

/**
 * @program: design
 * @description: 用户修改密码请求
 * @author: Antony
 * @create: 2019-04-16 09:24
 **/
public class UpdateUserPassRequest {
    private String repassword;
    private String newPassword;
    private String newPassword1;


    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getNewPassword1() {
        return newPassword1;
    }

    public void setNewPassword1(String newPassword1) {
        this.newPassword1 = newPassword1;
    }

    @Override
    public String toString() {
        return "UpdateUserPassRequest{" +
                "repassword='" + repassword + '\'' +
                ", newPassword='" + newPassword + '\'' +
                ", newPassword1='" + newPassword1 + '\'' +
                '}';
    }
}
