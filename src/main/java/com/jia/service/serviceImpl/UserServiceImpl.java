package com.jia.service.serviceImpl;

import com.jia.dao.BookMapper;
import com.jia.dao.UserMapper;
import com.jia.pojo.User;
import com.jia.service.UserService;

/**
 * User:侠客
 * Date:2022/2/9 17:54
 * Description:
 */
public class UserServiceImpl implements UserService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    public void registUser(User user) {
        userMapper.adduser(user);
    }

    public User loginUser(User user) {
        return userMapper.queryByName(user.getUserName(),user.getPassword(),user.getType());
    }

    public User existUsername(String userName) {
        return userMapper.existUsername(userName);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }
}
