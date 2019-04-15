package com.cqut.li.eplay_ssm.controller;

import com.alibaba.fastjson.JSON;
import com.cqut.li.eplay_ssm.service.ISportService;
import com.cqut.li.eplay_ssm.tool.EntityIDFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/14-14:12
 */
@Controller
@RequestMapping("/sport")
public class SportController {

    @Resource
    ISportService sportService;


    @RequestMapping(value = "/getSportMsgById", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getSportMsgById(@RequestParam("gid") String group_id){
        return JSON.toJSONString(sportService.getSportMsgById(group_id));
    }

    @RequestMapping(value = "/addSport", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String addSport(@RequestParam("uid") String uid, @RequestParam("gname") String sport_name,
                           @RequestParam("address") String address, @RequestParam("time") String time){

        Map<String, Object> properties = new HashMap<>();
        properties.put("sport_id", EntityIDFactory.createId());
        properties.put("sport_name", sport_name);
        properties.put("sport_userlist", uid);
        properties.put("sport_address", address);
        properties.put("sport_time", time);
        return JSON.toJSONString(sportService.addSport(properties));
    }


    @RequestMapping(value = "/updateSportMsgById", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String updateSportMsgById(@RequestParam("gid") String gid, @RequestParam("gname") String sport_name,
                                     @RequestParam("address") String address, @RequestParam("time") String time){
        Map<String, Object> properties = new HashMap<>();

        properties.put("sport_id", gid);
        properties.put("sport_name", sport_name);
        properties.put("sport_address", address);
        properties.put("sport_time", time);
        return JSON.toJSONString(sportService.updateSportMsgById(properties));
    }
}
