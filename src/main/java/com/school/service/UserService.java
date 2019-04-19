package com.school.service;

import com.school.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    //增添新的用户
    public int addNewUser(User user);

    //更新用户资料
    public int updateUser(User user);

    //通过用户名查找用户
    public User findUserByUserName(String username);


    //查找所有的用户
    public List<User> findAllUser();

    //删除用户
    public int deleteUser(String userName);

}
