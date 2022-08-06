package com.jia.service;

import com.jia.pojo.User;

/**
 * User:侠客
 * Date:2022/1/24 17:34
 * Description:
 */
public interface UserService {
    public void registUser(User user);
    public User loginUser(User user);
    public User existUsername(String userName);
    public int updateUser(User user);
}
