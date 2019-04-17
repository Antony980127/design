package com.school.entity;

/**
 * @program: design
 * @description: 相册实体
 * @author: Antony
 * @create: 2019-04-16 09:49
 **/
public class Album {
    //相册id
    private long id;
    //相册名称
    private String name;
    //相册描述
    private String desc;
    //相册用户
    private long userId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Album{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", userId=" + userId +
                '}';
    }
}
