package com.school.request;

/**
 * @program: design
 * @description: 用户修改密码请求
 * @author: Antony
 * @create: 2019-04-16 09:24
 **/
public class UpdateUserPassRequest {
    private String passowrd;
    private String newPassword;
    private String newPassword1;

    public String getPassowrd() {
        return passowrd;
    }

    public void setPassowrd(String passowrd) {
        this.passowrd = passowrd;
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
        return "UpdateUserPass{" +
                "passowrd='" + passowrd + '\'' +
                ", newPassword='" + newPassword + '\'' +
                ", newPassword1='" + newPassword1 + '\'' +
                '}';
    }
}
