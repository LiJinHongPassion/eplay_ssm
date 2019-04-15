package com.cqut.li.eplay_ssm.service;

import java.util.List;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/14-12:56
 */
public interface IGroupService {

    Map<String, Object> getGroupMsgById(String group_id);

    Map<String, Object> addGroup(Map<String, Object> properties);

    Map<String, Object> updateGroupUser(String user, String group_id);

    Map<String, Object> delGroupUser(String user, String group_id);

    Map<String, Object> updateGroupMsgById(Map<String, Object> properties);

    List<Map<String, Object>> getGroups(String page);

}
