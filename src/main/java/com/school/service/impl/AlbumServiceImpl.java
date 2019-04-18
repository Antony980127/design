package com.school.service.impl;

import com.school.dao.AlbumMapper;
import com.school.entity.Album;
import com.school.entity.AlbumComm;
import com.school.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: design
 * @description: 相册服务层实现嘞
 * @author: Antony
 * @create: 2019-04-16 09:55
 **/
@Service
public class AlbumServiceImpl implements AlbumService {
    @Autowired
    private AlbumMapper albumMapper;

    @Override
    public List<Album> list() {
        return albumMapper.list();
    }

    @Override
    public Album getById(long id) {
        return albumMapper.getById(id);
    }

    @Override
    public List<Album> findByStatus(String status) {
        return albumMapper.findByStatus(status);
    }

    @Override
    public int updateStatusById(long id, String status) {
        return  albumMapper.updateStatusById(id,status);
    }

    @Override
    public Album addAlbum(Album album) {
        return albumMapper.addAlbum(album);
    }

    @Override
    public int deleteAlbumById(long id) {
        return albumMapper.deleteAlbumById(id);
    }
}
