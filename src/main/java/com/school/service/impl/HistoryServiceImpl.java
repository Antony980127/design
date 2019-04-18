package com.school.service.impl;

import com.school.dao.HistoryMapper;
import com.school.entity.History;
import com.school.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: design
 * @description: 历史长河服务层实现类
 * @author: Antony
 * @create: 2019-04-16 11:04
 **/
@Service
public class HistoryServiceImpl implements HistoryService {
   @Autowired
   private HistoryMapper historyMapper;

    @Override
    public List<History> list() {
        return historyMapper.list();
    }
}
