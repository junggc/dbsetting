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
        System.out.println("fff");
//        sqlSession.update("mappers.JhlMapper.myid",bDto);
        sqlSession.insert("mappers.JhlMapper.mid",bDto);
//        sqlSession.delete("mappers.JhlMapper.myid",bDto);
        System.out.println("popo");
//        sqlSession.update("mappers.JhlMapper.myid",bDto);
//        sqlSession.select("mappers.JhlMapper.myid",bDto);
//        sqlSession.delete("mappers.JhlMapper.myid",bDto);
    }

}
