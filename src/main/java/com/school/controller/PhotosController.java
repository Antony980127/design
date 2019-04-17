package com.school.controller;

import com.school.request.PhotoRequest;
import com.school.service.PhotosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: design
 * @description: 相片控制器
 * @author: Antony
 * @create: 2019-04-16 10:19
 **/
@Controller
@RequestMapping("photos")
public class PhotosController {

    @Autowired
    private PhotosService photosService;


    /**
     * 通过AlbumId获得照片集合
     * @param albumId
     * @return
     */
    @RequestMapping("getByAlbumId")
    public String getByAlbumId(@RequestParam("albumId")long albumId ){
        System.out.println(albumId);
        return null;
    }

    /**
     * 通过id 删除照片
     * @param photo_id
     * @return
     */
    @RequestMapping("deletePhoto")
    public String deletePhoto(@RequestParam("id")long photo_id ){
        System.out.println(photo_id);
        return null;
    }

    /**
     * 添加照片
     * @param photo
     * @return
     */
    @RequestMapping("addPhoto")
    public String addPhoto(@RequestBody PhotoRequest photo){
        System.out.println(photo.toString());
        return null;
    }






}
