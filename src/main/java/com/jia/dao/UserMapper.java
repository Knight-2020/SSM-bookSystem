package com.jia.dao;

import com.jia.pojo.User;
import org.apache.ibatis.annotations.Param;


/**
 * User:侠客
 * Date:2022/1/24 17:30
 * Description:
 */
public interface UserMapper {

    User queryByName(@Param("userName") String userName, @Param("password") String password, @Param("type") String type);

    int adduser(User user);

    User existUsername(String userName);

    int updateUser(User user);




}
