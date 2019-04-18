package com.school.service;

import com.school.entity.History;

import java.util.List;

/**
 * @program: design
 * @description: 历史长河服务层
 * @author: Antony
 * @create: 2019-04-16 11:03
 **/
public interface HistoryService {

    //查找所有
    List<History> list();

}
