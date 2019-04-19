package com.school.controller;

import com.school.entity.History;
import com.school.request.HistoryRequest;
import com.school.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.*;
import java.util.List;

/**
 * @program: design
 * @description: 历史长河控制器
 * @author: Antony
 * @create: 2019-04-16 11:02
 **/
@Controller
public class HistoryController {
    @Autowired
    private HistoryService historyService;


    //添加
    @RequestMapping("addHistory")
    public String addHistory(@RequestBody HistoryRequest historyRequest){
        System.out.println(historyRequest.toString());
        return null;
    }

    //更新
    @RequestMapping("updateHistory")
    public String updateHistory(@RequestBody HistoryRequest historyRequest){
        System.out.println(historyRequest.toString());
        return null;
    }



    //通过id查找
    @RequestMapping("getById")
    public String updateHistory(@RequestParam long id){
        System.out.println("历史长河id："+id);
        return null;
    }


    //查找所有
    @RequestMapping("listHistory")
    public String updateHistory(){
        System.out.println("查找所有历史长河消息");
        List<History> list = historyService.list();
        System.out.println("查询到历史长河共"+list.size()+"条");
        return "history";
    }

}
