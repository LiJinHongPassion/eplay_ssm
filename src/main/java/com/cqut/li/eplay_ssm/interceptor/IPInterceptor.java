package com.cqut.li.eplay_ssm.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * @author Li
 * @date 2019/4/15-9:06
 */
public class IPInterceptor implements HandlerInterceptor {

        //    @Resource
        private BlackListDao blackListDao = new BlackListDao();

        private Map<String, Integer> redisTemplate = new HashMap<String, Integer>();
        private static final Logger logger = LoggerFactory.getLogger(IPInterceptor.class);

        @Override
        public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
            return true;
        }

        @Override
        public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
            String ip = IPAddressUtil.getClientIpAddress(httpServletRequest);
            BlackList blackList = blackListDao.findByIp(ip);
            if (blackList == null ){
                urlHandle(httpServletRequest, 5000, 5);
            } else {
                modelAndView.setViewName("/errorpage/error");
            }
        }

        @Override
        public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

        }

        public void urlHandle(HttpServletRequest request, long limitTime,int limitCount) {
            try {
                logger.info("拦截器！！！");
                String ip = IPAddressUtil.getClientIpAddress(request);
                String url = request.getRequestURL().toString();
                final String key = "req_limit_".concat(url).concat(ip);

                if(redisTemplate.get(key)==null || redisTemplate.get(key)==0){
                    redisTemplate.put(key,1);
                }else{
                    redisTemplate.put(key,redisTemplate.get(key)+1);
                }
                int count = redisTemplate.get(key);
                if (count > 0) {
                    Timer timer= new Timer();
                    TimerTask task  = new TimerTask(){
                        @Override
                        public void run() {
                            redisTemplate.remove(key);
                        }
                    };
                    timer.schedule(task, limitTime);
                }
                if (count > limitCount){
                    Calendar calendar = Calendar.getInstance();
                    Date iptime=calendar.getTime();
                    BlackList blackList = new BlackList(ip, iptime);
                    blackListDao.addBlackList(blackList);
                    logger.warn("HTTP请求超出设定的限制!!!!");
                }
            }  catch (Exception e) {
                logger.error("ip拦截发生异常: ", e);
            }
        }

}
