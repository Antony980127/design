package com.school.service;

import com.school.entity.Photos;

import java.util.List;

/**
 * @program: design
 * @description: 相片服务层
 * @author: Antony
 * @create: 2019-04-16 10:19
 **/
public interface PhotosService {

    //查找所有
    List<Photos> list();

    //添加照片
    Photos addPhotos(Photos photos);

    //通过相册id查找
    List<Photos> findByAlbumId(long albumId);

    //通过id删除照片
    int deletePhotosById(long id);

}
