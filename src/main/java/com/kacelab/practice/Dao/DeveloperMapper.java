package com.kacelab.practice.Dao;



import com.kacelab.practice.Dto.BDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class DeveloperMapper {
    @Autowired
    private SqlSession sqlSession;

    public List<BDto> test(BDto bDto) throws Exception{
        return sqlSession.selectList("mappers.JhlMapper.test");

    }
    public void myid(BDto bDto ){
        sqlSession.insert("mappers.JhlMapper.myid",bDto);
    }

}
