package com.school.service.impl;

import com.school.dao.TimecapsuleMapper;
import com.school.entity.Timecapsule;
import com.school.service.TimecapsuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TimecapsuleServiceImpl implements TimecapsuleService {
    @Autowired
    private TimecapsuleMapper timecapsuleMapper;


    @Override
    public int addNewTimecapsule(Timecapsule timecapsule) {
        return timecapsuleMapper.addNewTimecapsule(timecapsule);
    }

    @Override
    public int deleteTimecapusle(String id) {
        return timecapsuleMapper.deleteTimecapsule(id);
    }

    @Override
    public int updateTimecapusle(String id, int status) {
        return timecapsuleMapper.updateTimecapsule(id,status);
    }
}