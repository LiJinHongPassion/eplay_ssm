package com.cqut.li.eplay_ssm.service.Impl;

import com.cqut.li.eplay_ssm.dao.base.Dao;
import com.cqut.li.eplay_ssm.entity.Sport;
import com.cqut.li.eplay_ssm.service.ISportService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/14-13:07
 */
@Service
public class SportServiceImpl implements ISportService {

    //logger
    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource(name = "Dao")
    private Dao dao;

    @Override
    public Map<String, Object> getSportMsgById(String sport_id) {

        Sport sport = dao.getByID(sport_id, Sport.class);
        if(sport != null)
            return sport.toMap();
        Map<String, Object> result = new HashMap<>();
        result.put("result", "-1");
        return result;
    }

    @Override
    public Map<String, Object> addSport(Map<String, Object> properties) {
        Sport sport = new Sport();
        sport.setProperties(properties);
        int  temp = dao.save(sport);
        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        properties.put("result", "1");
        return properties;
    }

    @Override
    public Map<String, Object> updateSportMsgById(Map<String, Object> properties) {
        Sport sport = new Sport();
        sport.setProperties(properties);

        int temp = dao.updatePropByID(sport, properties.get("sport_id").toString());

        if(temp != 1){
            Map<String, Object> result = new HashMap<>();
            result.put("result", "-1");
            return result;
        }
        properties.put("result", "1");
        return properties;
    }
}
