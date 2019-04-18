package com.school.dao;

import com.school.entity.Album;

import java.util.List;

/**
 * 相册（流沙岁月）数据层
 */
public interface AlbumMapper {
    //查找所有
    List<Album> list();

    //通过id查找
    Album getById(long id);

    //通过状态查找
    List<Album> findByStatus(String status);

    //更新某相册的状态
    int updateStatusById(long id,String status);

    //新建相册
    Album addAlbum(Album album);

    //通过id删除相册
    int deleteAlbumById(long id);
}
