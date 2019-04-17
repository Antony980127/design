package com.school.entity;

/**
 * @program: design
 * @description: 照片实体
 * @author: Antony
 * @create: 2019-04-16 10:16
 **/
public class Photos {
    private long id;
    //照片名称
    private String name;
    //相册id
    private long AlbumId;

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
        return AlbumId;
    }

    public void setAlbumId(long albumId) {
        AlbumId = albumId;
    }

    @Override
    public String toString() {
        return "Photos{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", AlbumId=" + AlbumId +
                '}';
    }
}
