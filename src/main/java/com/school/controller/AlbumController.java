package com.school.controller;

import com.school.request.AlbumRequest;
import com.school.request.UpdateAlbumByIdRequest;
import com.school.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: design
 * @description: 相册控制层
 * @author: Antony
 * @create: 2019-04-16 09:53
 **/
@Controller
@RequestMapping("album")
public class AlbumController {

    @Autowired
    private AlbumService albumService;

    /**
     * 查找用户的所有相册
     */
    @RequestMapping("/listByUser")
    private String register(@RequestParam("username")String username){
        //获得用户  通过用户查找
        System.out.println(username);
        return null;
    }


    /**
     * 更新用户相册信息
     */
    @RequestMapping("/updateById")
    private String updateByUser(@RequestBody UpdateAlbumByIdRequest updateAlbumById){
        //获得用户  通过用户查找
        System.out.println(updateAlbumById.toString());
        return null;
    }

    /**
     * 新增相册
     */
    @RequestMapping("/addAlbum")
    private String addAlbum(@RequestBody AlbumRequest album){
        //获得用户  通过用户查找
        System.out.println(album.toString());
        return null;
    }



}
