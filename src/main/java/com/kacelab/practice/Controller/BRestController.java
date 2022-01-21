package com.kacelab.practice.Controller;

import com.kacelab.practice.Dto.BDto;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sun.misc.Request;

import java.util.List;

@RestController
public class BRestController {

    @RequestMapping(value = "/jsontest")
    public BDto jsontest(@ModelAttribute BDto bdto, Model model){
//
//        System.out.println(bdto.getNAME());
//        System.out.println(bdto.getNAME());


        BDto bDto2 = new BDto();
        bDto2.setNAME("케이스랩");
        System.out.println(bDto2.getNAME());
            return bDto2;
    }


}
