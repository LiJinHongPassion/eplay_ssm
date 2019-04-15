package com.cqut.li.eplay_ssm.service.Impl;

import com.cqut.li.eplay_ssm.dao.base.Dao;
import com.cqut.li.eplay_ssm.dao.base.EntityDao;
import com.cqut.li.eplay_ssm.dao.base.SearchDao;
import com.cqut.li.eplay_ssm.entity.Group;
import com.cqut.li.eplay_ssm.entity.base.Entity;
import com.cqut.li.eplay_ssm.service.IGroupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/14-13:08
 */
@Service
public class GroupServiceImpl implements IGroupService {

    //logger
    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource(name = "Dao")
    private Dao dao;


    @Override
    public Map<String, Object> getGroupMsgById(String group_id) {
        Group group = dao.getByID(group_id, Group.class);
        if(group != null)
            return group.toMap();
        Map<String, Object> result = new HashMap<>();
        result.put("result", "-1");
        return result;
    }

    @Override
    public Map<String, Object> addGroup(Map<String, Object> properties) {
        Group group = new Group();
        group.setProperties(properties);
        int  temp = dao.save(group);
        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        properties.put("result", "1");
        return properties;
    }

    @Override
    public Map<String, Object> updateGroupUser(String user_id, String group_id) {

        Map<String, Object> map = getGroupMsgById(group_id);

        String user_list = map.get("group_userlist").toString();

        map.replace("group_userlist", user_list + "," + user_id);

        Group group = new Group();
        group.setProperties(map);

        int temp = dao.updatePropByID(group, group_id);
        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        map.put("result", "1");
        return map;
    }

    @Override
    public Map<String, Object> delGroupUser(String user_id, String group_id) {

        Map<String, Object> map = getGroupMsgById(group_id);

        String user_list = map.get("group_userlist").toString();

        String[] users =  user_list.split(",");

        for (int i=0; i < users.length; i++){

            if(users[i].equals(user_id)){
                users[i] = "";
                break;
            }
        }
        user_list = "";
        for (int i=0; i < users.length; i++){
            user_list = "," + users[i];
        }

        user_list = user_list.replace(",,", ",").substring(1);
        logger.info("delGroupUser:user_list = " + user_list);


        map.replace("group_userlist", user_list);

        Group group = new Group();
        group.setProperties(map);

        int temp = dao.updatePropByID(group, group_id);
        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        map.put("result", "1");
        return map;
    }

    @Override
    public Map<String, Object> updateGroupMsgById(Map<String, Object> properties) {

        Group group = new Group();
        group.setProperties(properties);

        int temp = dao.updatePropByID(group, properties.get("group_id").toString());

        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        properties.put("result", "1");
        return properties;
    }

    @Override
    public List<Map<String, Object>> getGroups(String page) {
        List<Map<String, Object>> result_list = dao.searchWithPage(
                new String[]{
                        "group_id",
                        "group_name",
                        "group_userlist",
                        "sport_address",
                        "sport_time"
                },
                Entity.getTableName(Group.class),
                null,
                null,
                "1 = 1",
                null,
                "group_id",
                "DESC",
                Integer.parseInt(page)*10,
                Integer.parseInt(page)
        );
        return result_list;
    }
}
