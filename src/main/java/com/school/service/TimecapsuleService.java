package com.school.service;

import com.school.entity.Timecapsule;

public interface TimecapsuleService {
     //发布新的消息
    public int addNewTimecapsule(Timecapsule timecapsule);

    //删除
    public int deleteTimecapusle(String id);

    //更新状态
    public  int updateTimecapusle(String id,int status);
}
