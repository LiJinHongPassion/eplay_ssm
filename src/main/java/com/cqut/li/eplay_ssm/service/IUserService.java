package com.cqut.li.eplay_ssm.service;

import java.util.List;
import java.util.Map;

/**
 * @author Li
 * @date 2018/10/23-11:59
 */
public interface IUserService {

    Map<String, Object> add(Map<String, Object> properties);

    Map<String, Object> delete(String user_id);

    Map<String, Object> update(Map<String, Object> properties);

    Map<String, Object> getById(String user_id);

    List<Map<String, Object>> getUsers(String page);

}
