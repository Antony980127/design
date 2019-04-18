package com.school.dao;

import com.school.entity.TimecapsuleComm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: design
 * @description: 流沙岁月的评论数据层
 * @author: Antony
 * @create: 2019-04-18 09:56
 **/
public interface TimecapsuleCommMapper {

    //根据Id查找所有的评论
    List<TimecapsuleComm> findAllByTimecapsuleId(@Param("id")long id);
    //添加评论
    int addTimecapsuleComm(TimecapsuleComm timecapsuleComm);


}
