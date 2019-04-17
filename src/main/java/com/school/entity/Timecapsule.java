package com.school.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 发布内容实体
 */
public class Timecapsule implements Serializable {

    private String id;

    private String content;//发布内容

    private String publishuser;//发布者

    private Date publishtime;//发布时间

    private String touser;//发送指定用户

    private  int status = 1;//是否已经发送 0 表示没有 1 表示发送

    public Timecapsule() {
    }

    public Timecapsule(String id, String content, String publishuser, Date publishtime, String touser, int status) {
        this.id = id;
        this.content = content;
        this.publishuser = publishuser;
        this.publishtime = publishtime;
        this.touser = touser;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public String getPublishuser() {
        return publishuser;
    }

    public Date getPublishtime() {
        return publishtime;
    }

    public String getTouser() {
        return touser;
    }

    public int getStatus() {
        return status;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPublishuser(String publishuser) {
        this.publishuser = publishuser;
    }

    public void setPublishtime(Date publishtime) {
        this.publishtime = publishtime;
    }

    public void setTouser(String touser) {
        this.touser = touser;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Timecapsule{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                ", publishuser='" + publishuser + '\'' +
                ", publishtime=" + publishtime +
                ", touser='" + touser + '\'' +
                ", status=" + status +
                '}';
    }
}
