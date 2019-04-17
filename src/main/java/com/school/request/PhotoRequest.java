package com.school.request;

/**
 * @program: design
 * @description: 照片请求
 * @author: Antony
 * @create: 2019-04-16 10:38
 **/
public class PhotoRequest {
    private long id;
    private String name;
    private long albumId;

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

    public long getAlbumId() {
        return albumId;
    }

    public void setAlbumId(long albumId) {
        this.albumId = albumId;
    }

    @Override
    public String toString() {
        return "Photo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", albumId=" + albumId +
                '}';
    }
}
