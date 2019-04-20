package com.cqut.li.eplay_ssm.service;

import java.util.List;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/14-13:02
 */
public interface ISportService {
    
    Map<String, Object> getSportMsgById(String group_id);

    Map<String, Object> addSport(Map<String, Object> properties);

    Map<String, Object> updateSportMsgById(Map<String, Object> properties);

    List<Map<String, Object>> getSports(String page);
}
