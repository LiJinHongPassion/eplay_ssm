package com.cqut.li.eplay_ssm.tool;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class EntityIDFactory {

    private static final SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
    private static String preId = "";

    public static synchronized String createId() {
        String id = format.format(Calendar.getInstance().getTime());
        while (id.equals(preId)) {
            id = format.format(Calendar.getInstance().getTime());
        }
        preId = id;
        return id;
    }
}
