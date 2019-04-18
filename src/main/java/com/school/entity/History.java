package com.school.entity;

/**
 * @program: design
 * @description: 历史长河
 * @author: Antony
 * @create: 2019-04-16 11:00
 **/
public class History {
    //id
    private long id;
    //标题
    private String name;
    //内容
    private String desc;

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

    @Override
    public String toString() {
        return "History{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
}
