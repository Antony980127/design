package com.school.dao;

import com.school.entity.Photos;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: design
 * @description: 照片数据层
 * @author: Antony
 * @create: 2019-04-18 09:55
 **/
public interface PhotosMapper {
    //查找所有
    List<Photos> list();

    //添加照片
    Photos addPhotos(Photos photos);

    //通过相册id查找
    List<Photos> findByAlbumId(@Param("albumId") long albumId);

    //通过id删除照片
    int deletePhotosById(@Param("id") long id);
}
