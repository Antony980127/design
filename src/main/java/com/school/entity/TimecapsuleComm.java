package com.school.entity;

/**
 * @program: design
 * @description: 时光胶囊评论
 * @author: Antony
 * @create: 2019-04-18 09:44
 **/
public class TimecapsuleComm {
    //id
    private long id;
    //时光胶囊的id
    private long timecapsuleId;
    //用户的id
    private long userId;
    //评论内容
    private String content;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getTimecapsuleId() {
        return timecapsuleId;
    }

    public void setTimecapsuleId(long timecapsuleId) {
        this.timecapsuleId = timecapsuleId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "TimecapsuleComm{" +
                "id=" + id +
                ", timecapsuleId=" + timecapsuleId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                '}';
    }
}
