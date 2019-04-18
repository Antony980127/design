package com.school.entity;

/**
 * @program: design
 * @description: 相册（流沙岁月）评论
 * @author: Antony
 * @create: 2019-04-18 09:41
 **/
public class AlbumComm {
    //id
    private long id;
    //相册的id
    private long albumId;
    //用户的id
    private long userId;
    //评论
    private String content;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getAlbumId() {
        return albumId;
    }

    public void setAlbumId(long albumId) {
        this.albumId = albumId;
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
        return "AlbumComm{" +
                "id=" + id +
                ", albumId=" + albumId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                '}';
    }
}
