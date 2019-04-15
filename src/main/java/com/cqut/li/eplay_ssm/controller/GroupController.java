package com.cqut.li.eplay_ssm.controller;

import com.alibaba.fastjson.JSON;
import com.cqut.li.eplay_ssm.service.IGroupService;
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
@RequestMapping("/group")
public class GroupController {

    @Resource
    IGroupService groupService;

    @RequestMapping(value = "/getGroupMsgById", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getGroupMsgById(@RequestParam("gid") String group_id){
        return JSON.toJSONString(groupService.getGroupMsgById(group_id));
    }

    @RequestMapping(value = "/getGroups", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getGroups(@RequestParam("page") String page){
        return JSON.toJSONString(groupService.getGroups(page));
    }

    @RequestMapping(value = "/addGroup", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String addGroup(@RequestParam("uid") String uid, @RequestParam("gname") String group_name,
                           @RequestParam("address") String address, @RequestParam("time") String time){

        Map<String, Object> properties = new HashMap<>();
        properties.put("group_id", EntityIDFactory.createId());
        properties.put("group_name", group_name);
        properties.put("group_userlist", uid);
        properties.put("sport_address", address);
        properties.put("sport_time", time);
        return JSON.toJSONString(groupService.addGroup(properties));
    }

    @RequestMapping(value = "/updateGroupUser", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String updateGroupUser(@RequestParam("uid") String uid, @RequestParam("gid") String gid){
        return JSON.toJSONString(groupService.updateGroupUser(uid, gid));
    }

    @RequestMapping(value = "/delGroupUser", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String delGroupUser(@RequestParam("uid") String uid, @RequestParam("gid") String gid){
        return JSON.toJSONString(groupService.delGroupUser(uid, gid));
    }

    @RequestMapping(value = "/updateGroupMsgById", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String updateGroupMsgById(@RequestParam("gid") String gid, @RequestParam("gname") String group_name,
                                     @RequestParam("address") String address, @RequestParam("time") String time){
        Map<String, Object> properties = new HashMap<>();

        properties.put("group_id", gid);
        properties.put("group_name", group_name);
        properties.put("sport_address", address);
        properties.put("sport_time", time);
        return JSON.toJSONString(groupService.updateGroupMsgById(properties));
    }
}
