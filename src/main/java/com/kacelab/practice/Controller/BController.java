package com.kacelab.practice.Controller;

import com.kacelab.practice.Dto.BDto;
import com.kacelab.practice.Service.BService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BController {

    @Autowired
    private BService bService;

    @RequestMapping("/")
    public String main(Model model, @ModelAttribute BDto bdto)throws Exception{
        Map<String ,Object> map = new HashMap<String ,Object>();
        List<Object> lst = new ArrayList<Object>();
        String[] ab = new String[3];

        List<BDto> b = bService.test(bdto);
        model.addAttribute("developerlist",b);

        return "index";

}

}
