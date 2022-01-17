package com.kacelab.practice.Dao;



import com.kacelab.practice.Dto.BDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface DeveloperMapper {
    public List<BDto> test(BDto bDto) throws Exception;



}
