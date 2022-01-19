package com.kacelab.practice.Service;


import com.kacelab.practice.Dao.DeveloperMapper;
import com.kacelab.practice.Dto.BDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BService {

    @Autowired(required = false)
    private DeveloperMapper developerMapper;

    //    public String TDto(TheDto thedto){
    public List<BDto> test(BDto dto) throws Exception {
        List<BDto> list = null;
        try {
            list = developerMapper.test(dto);

        } catch (Exception e) {
            e.printStackTrace();
            list = new ArrayList();

            throw new Exception("메시지");
        }
        return list;
//        System.out.println(thedto.getBb()+" =bb");
//        System.out.println(thedto.getCc()+" =cc");
//        System.out.println(thedto.getCc()+" =ee");
    }

    public void test2(BDto bdto) {
//        DeveloperMapper developerMapper = new DeveloperMapper();
        developerMapper.myid(bdto);
    }

}