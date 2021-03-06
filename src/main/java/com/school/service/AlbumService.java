package com.school.service;

import com.school.entity.Album;
import com.school.entity.AlbumComm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 相册服务层
 */
public interface AlbumService {
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
