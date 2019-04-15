package com.cqut.li.eplay_ssm.service.Impl;

import com.cqut.li.eplay_ssm.dao.base.EntityDao;
import com.cqut.li.eplay_ssm.dao.base.SearchDao;
import com.cqut.li.eplay_ssm.entity.User;
import com.cqut.li.eplay_ssm.entity.base.Entity;
import com.cqut.li.eplay_ssm.service.IUserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Li
 * @date 2018/10/23-11:58
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private EntityDao entityDao;
    @Resource
    private SearchDao searchDao;

    /**  这是shiro的注解
     * 普通的service都可以添加这个注解
     * @RequiresRoles({"admin,"user"},logical=Logical.AND):表示当前需要admin和user的角色
     * @RequiresRolesUser:表示已经身份认证或者通过记住我登录的
     * @RequiresAuthentication:表示已经通过了身份认证
     * @RequiresPermissions(value={"user:a","user:b"},logical=Logical.OR)
     *
     */
    @Override
//    @RequiresRoles({"user"})
    public Map<String, Object> getById(String user_id) {
        Map<String, Object> result = new HashMap<>();
        result = entityDao.findByID(new String[]{
                        "user_id" ,
                        "password",
                        "user_name" ,
                        "address" ,
                        "email"  ,
                        "birthday"
                },
                user_id,
                Entity.getPrimaryKey(User.class),
                Entity.getTableName(User.class));

        if(result.size() == 0 || result == null){
            result.put("result","-1");
        }else{
            result.put("result","1");
        }

        return result;
    }

    @Override
    public Map<String, Object> add(Map<String, Object> properties) {
        Map<String, Object> result = new HashMap<>();

        User user = new User();
        user.setProperties(properties);
        user.setPassword(pwdEncryption(user.getPassword(),user.getUser_id()));

        entityDao.save(user);
        result.put("result","1");
        return result;
    }


    private String pwdEncryption(String pwd, String salt_user_id){
        String hashAlgorithmName = "MD5";
        Object credentials = pwd;
        Object salt = ByteSource.Util.bytes(salt_user_id);
        int hashIterations = 512;
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        return result.toString();
    }


    @Override
    public Map<String, Object> delete(String user_id) {
        Map<String, Object> result = new HashMap<>();
        entityDao.deleteByID(user_id, Entity.getTableName(User.class),Entity.getPrimaryKey(User.class));
        result.put("result","1");
        return result;
    }

    @Override
    public Map<String, Object> update(Map<String, Object> properties) {
        Map<String, Object> result = new HashMap<>();

        User user = new User();
        user.setProperties(properties);
        user.setPassword(pwdEncryption(user.getPassword(),user.getUser_name()));

        entityDao.updatePropByID(user,user.getUser_id().toString());
        result.put("result","1");
        return result;
    }


}
