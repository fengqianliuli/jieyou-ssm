package com.zhiyu.service;

import com.zhiyu.dao.UserMapper;
import com.zhiyu.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public void deleteUser(String username) {
        userMapper.deleteUser(username);
    }

    @Override
    public User getOneUserByName(String username) {
        return userMapper.getOneUserByName(username);
    }

    @Override
    public User validateLogin(String username, String userPassword) {
        User user = userMapper.getOneUserByName(username);
        if(user!=null && user.getUserPassword().equals(userPassword)){
            return user;
        }else{
            return null;
        }
    }
//=================================================
    @Override
    public void insertSecret(Secret s) {
        userMapper.insertSecret(s);
    }

    @Override
    public void updateSecret(Secret s) {
        userMapper.updateSecret(s);
    }

    @Override
    public void deleteSecret(int sid) {
        userMapper.deleteSecret(sid);
    }

    @Override
    public Secret selectSecretById(int sid) {
        return userMapper.selectSecretById(sid);
    }

    @Override
    public List<Secret> selectSecret() {
        return userMapper.selectSecret();
    }

    @Override
    public List<Secret> selectSecretByName(String username) {
        return userMapper.selectSecretByName(username);
    }

//    =============================================

    @Override
    public void insertProblem(Problem p) {
        userMapper.insertProblem(p);
    }

    @Override
    public void updateProblem(Problem p) {
        userMapper.updateProblem(p);
    }

    @Override
    public void deleteProblem(int pid) {
        deleteProblem(pid);
    }

    @Override
    public Problem selectOneProblemById(int pid) {
        return userMapper.selectOneProblemById(pid);
    }

    @Override
    public List<Problem> selectAllProblem() {
        return userMapper.selectAllProblem();
    }

    @Override
    public List<Problem> selectAllProblemByUsername(String username) {
        return userMapper.selectAllProblemByUsername(username);
    }

//    ============================================

    @Override
    public void insertAnswer(Answer a) {
        userMapper.insertAnswer(a);
    }

    @Override
    public void updateAnswer(Answer a) {
        userMapper.updateAnswer(a);
    }

    @Override
    public void deleteAnswer(int aid) {
        userMapper.deleteAnswer(aid);
    }

    @Override
    public List<Answer> selectAllAnswerForOneProblem(int pid) {
        return userMapper.selectAllAnswerForOneProblem(pid);
    }

    @Override
    public List<Answer> selectAllAnswerForUsername(String username) {
        return userMapper.selectAllAnswerForUsername(username);
    }

//    ========================================

    @Override
    public void insertRemark(Remark r) {
        userMapper.insertRemark(r);
    }

    @Override
    public void updateRemark(Remark r) {
        userMapper.updateRemark(r);
    }

    @Override
    public void deleteRemark(int rid) {
        userMapper.deleteRemark(rid);
    }

    @Override
    public List<Remark> selectRemarkByUsername(String username) {
        return userMapper.selectRemarkByUsername(username);
    }

    @Override
    public List<Remark> selectRemarkBySid(int sid) {
        return userMapper.selectRemarkBySid(sid);
    }
}
