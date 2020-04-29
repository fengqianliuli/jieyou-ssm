/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zhiyu.service;

import com.zhiyu.pojo.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    
    void insertUser(User user);//添加用户
    void updateUser(User user);//更新用户
    void deleteUser(String username);//删除用户（用户自己注销自己的账号）
    User getOneUserByName(String username);//用户名查找用户
    User validateLogin(String username,String userPassword);//用户登录验证
    
    void insertSecret(Secret s);//插入秘密记录
    void updateSecret(Secret s);//更新秘密
    void deleteSecret(int sid);//删除秘密记录
    Secret selectSecretById(int sid);//根据id查询秘密
    List<Secret> selectSecret();//查询所有公开秘密
    List<Secret> selectSecretByName(String username);//查询自己记录的所有秘密

    void insertProblem(Problem p);//插入一条问题
    void updateProblem(Problem p);//更新一条问题
    void deleteProblem(int pid);//删除一条问题
    Problem selectOneProblemById(int pid);//根据问题ID查询单个
    List<Problem> selectAllProblem();//查询所有问题记录
    List<Problem> selectAllProblemByUsername(String username);//根据用户名查询所有问题记录

    void insertAnswer(Answer a);//插入一条回答
    void updateAnswer(Answer a);//更新一条回答
    void deleteAnswer(int aid);//删除一条回答
    List<Answer> selectAllAnswerForOneProblem(int pid);//根据问题id查询所有回答
    List<Answer> selectAllAnswerForUsername(String username);//根据用户名查询所有回答
    
    void insertRemark(Remark r);//插入一条评论
    void updateRemark(Remark r);//更新一条评论
    void deleteRemark(int rid);//删除一条评论
    List<Remark> selectRemarkByUsername(String username);//根据用户名查询评论
    List<Remark> selectRemarkBySid(int sid);//根据sid值查询评论

}
