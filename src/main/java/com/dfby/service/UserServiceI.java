package com.dfby.service;

import java.util.List;

import com.dfby.domain.User;

public interface UserServiceI {

    /**
     * 添加用户
     * @param user
     */
    void addUser(User user);
    
    /**
     * 根据用户id获取用户
     * @param userId
     * @return
     */
    User getUserById(String userId);
    
    
    List<User> getAllUser();
    
    /**
     * 含有一对多关系
     * @return
     */
    List<User> getAllUser2();
}