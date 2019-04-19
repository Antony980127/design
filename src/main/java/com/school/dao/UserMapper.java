package com.school.dao;

import com.school.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //增添新的用户
    public int addNewUser(User user);

    //更新用户资料
    public int updateUser(User user);

    //查找用户
    public User findUserByUserName(@Param("username")String username);

    //查找所有的用户
    public List<User> findAllUser();

    //删除用户
    public int deleteUser(@Param("username")String username);

}
