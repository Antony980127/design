package com.school.service.impl;

import com.school.dao.AlbumCommMapper;
import com.school.entity.AlbumComm;
import com.school.service.AlbumCommService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: design
 * @description:
 * @author: Antony
 * @create: 2019-04-18 10:46
 **/
@Service
public class AlbumCommServiceImpl implements AlbumCommService {

    @Autowired
    private AlbumCommMapper albumCommMapper;

    @Override
    public AlbumComm addAlbumComm(AlbumComm albumComm) {
        return albumCommMapper.addAlbumComm(albumComm);
    }

    @Override
    public List<AlbumComm> findByAlbumId(long albumId) {
        return albumCommMapper.findByAlbumId(albumId);
    }
}
