package com.school.dao;

import com.school.entity.Album;
import com.school.entity.AlbumComm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AlbumCommMapper {
    //添加评论
    AlbumComm addAlbumComm(AlbumComm albumComm);

    //通过相册id查找
    List<AlbumComm> findByAlbumId(long albumId);




}
