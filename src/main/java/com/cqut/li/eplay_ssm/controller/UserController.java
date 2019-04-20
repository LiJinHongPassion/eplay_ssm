package com.cqut.li.eplay_ssm.controller;

/**
 * @author Li
 * @date 2018/10/14-16:39
 */
import com.alibaba.fastjson.JSON;
import com.cqut.li.eplay_ssm.entity.User;
import com.cqut.li.eplay_ssm.service.IUserService;
import com.cqut.li.eplay_ssm.tool.DateFactory;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {


    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private IUserService userService;


//    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
    public String login(@RequestParam("uid") String user_id,
                        @RequestParam("pwd") String password, HttpServletRequest request){

        Map<String, Object> result = new HashMap<>();

        Subject currentUser = SecurityUtils.getSubject();

        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(user_id, password);
//            token.setRememberMe(true);
            try {
                System.out.println("1. " + token.hashCode());
                currentUser.login(token);

                result = userService.getById(user_id);

                result.put("result","1");

            }
            catch (AuthenticationException ae) {
                System.out.println("登录失败: " + ae.getMessage());

                result.put("result","-1");
            }
        }else{
            result.put("result","1:已登录");
            logger.info("------------------------------------------ 已登录");
        }

        result.put("email", "cqut@gmail.com");
        result.put("address", "重庆理工大学花溪校区");


        request.getSession().setAttribute("user_msg", result);

        return "redirect:../index.jsp";
//        return "index";
//        return JSON.toJSONString(result);
    }

    @ResponseBody
    @RequestMapping(value = "/register", produces = "text/plain;charset=utf-8")
    public String register(@RequestParam("uid") String user_id, @RequestParam("uname") String user_name,
                           @RequestParam("pwd") String password, @RequestParam("birthday") String birthday){

        Map<String, Object> result = new HashMap<>();

        User user = new User();
        user.setUser_id(user_id);
        user.setPassword(password);
        user.setUser_name(user_name);
        user.setEmail("cqut@gmail.com");
        user.setAddress("重庆理工大学花溪校区");
        try {
            user.setBirthday(DateFactory.praseDate(birthday));
        } catch (ParseException e) {
            logger.warn("时间格式转化错误：" + e);
            try {
                user.setBirthday(DateFactory.praseDate("1998-01-01"));
            } catch (ParseException ex) {
                ex.printStackTrace();
            }
        }

        result = userService.add(user.toMap());

        return JSON.toJSONString(result);
    }

    @ResponseBody
    @RequestMapping(value = "/getUserMsg", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
    public String getUserMsg(@RequestParam("uid") String user_id){

        return JSON.toJSONString(userService.getById(user_id));
    }

    @RequestMapping(value = "/getUsers", method = RequestMethod.GET)
    public String getUsers(@RequestParam("page") String page, HttpServletRequest request){
        request.getSession().setAttribute("user_list_msg", userService.getUsers(page));
        return "users";
    }


}
