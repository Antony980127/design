package com.school.service.impl;

import com.school.dao.TimecapsuleCommMapper;
import com.school.entity.TimecapsuleComm;
import com.school.service.TimecapsuleCommService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: design
 * @description:
 * @author: Antony
 * @create: 2019-04-18 10:55
 **/
@Service
public class TimecapsuleCommServiceImpl implements TimecapsuleCommService {
    @Autowired
    private TimecapsuleCommMapper tcm;


    @Override
    public List<TimecapsuleComm> findAllByTimecapsuleId(long id) {
        return tcm.findAllByTimecapsuleId(id);
    }

    @Override
    public int addTimecapsuleComm(TimecapsuleComm timecapsuleComm) {
        return tcm.addTimecapsuleComm(timecapsuleComm);
    }
}
