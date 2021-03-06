package com.school.dao;

import com.school.entity.Timecapsule;
import org.apache.ibatis.annotations.Param;


public interface TimecapsuleMapper {

    //发布新的消息
    public int addNewTimecapsule(Timecapsule timecapsule);

    //删除
    public int deleteTimecapsule(@Param("id")String id);

    //更新状态
    public  int updateTimecapsule(@Param("id")String id,@Param("status")int status);
}
