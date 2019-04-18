package com.school.service.impl;

import com.school.dao.PhotosMapper;
import com.school.entity.Photos;
import com.school.service.PhotosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: design
 * @description: 照片服务层实现类
 * @author: Antony
 * @create: 2019-04-16 10:20
 **/
@Service
public class PhotosServiceImpl implements PhotosService {

    @Autowired
    private PhotosMapper photosMapper;
    @Override
    public List<Photos> list() {
        return photosMapper.list();
    }

    @Override
    public Photos addPhotos(Photos photos) {
        return photosMapper.addPhotos(photos);
    }

    @Override
    public List<Photos> findByAlbumId(long albumId) {
        return photosMapper.findByAlbumId(albumId);
    }

    @Override
    public int deletePhotosById(long id) {
        return photosMapper.deletePhotosById(id);
    }
}
