package com.cqut.li.eplay_ssm.interceptor;


import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Li
 * @date 2019/4/5-18:45
 */
@Service
public class BlackListDao {

    private static Map<String, Object> list = new HashMap<>();

    public BlackList findByIp(String ip) {
        return (BlackList)list.get(ip);
    }

    public void addBlackList(BlackList blackList) {
        list.put(blackList.getIp(), blackList);
    }
}
