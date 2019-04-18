package com.school.service;

import com.school.entity.TimecapsuleComm;

import java.util.List;

public interface TimecapsuleCommService {


    //根据Id查找所有的评论
    List<TimecapsuleComm> findAllByTimecapsuleId(long id);
    //添加评论
    int addTimecapsuleComm(TimecapsuleComm timecapsuleComm);

}
