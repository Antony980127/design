package com.school.service;

import com.school.entity.AlbumComm;

import java.util.List;

public interface AlbumCommService {

    //添加评论
    AlbumComm addAlbumComm(AlbumComm albumComm);

    //通过相册id查找
    List<AlbumComm> findByAlbumId(long albumId);


}
