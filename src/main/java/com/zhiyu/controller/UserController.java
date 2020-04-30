
package com.zhiyu.controller;


import com.zhiyu.pojo.*;
import com.zhiyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired//Service必须添加@Service注解后才能自动装配
    private UserService userService;

    //测试方法
    @RequestMapping("/test")
    public String test(Model model){
        return "OpenProblem";
    }





    //    跳转到注册页
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "userRegister";
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "userLogin";
    }
    
    
    
    
//    请求
    
//    登录验证
    @PostMapping("/login")
    public String volidateLogin(String username, String password, Model model){
        User u = userService.validateLogin(username, password);
        if(u==null){
            model.addAttribute("msg","登录失败，用户名或密码错误！");
            return "userLogin";
        }else{
            model.addAttribute("user", u);
            model.addAttribute("msg",u.getUserName()+"的空间");
            return "userBackpage";
        }
    }
    
//    用户注册
    @PostMapping("/userRegister")
    public String register(User user){
        userService.insertUser(user);
        return "redirect:/users/toLogin";
    }
    
//    添加秘密
    @PostMapping("/addSecret")
    public String addSecret(Secret s, Model model){
        s.setSTime(new Date());
        userService.insertSecret(s);
        model.addAttribute("user", s);
        model.addAttribute("msg",s.getUserName()+"的空间");
        return "userBackpage";
    }
    
    //添加问题
    @PostMapping("/addProblem")
    public String addProblem(Problem p, Model model){
        userService.insertProblem(p);
        model.addAttribute("user", p);
        model.addAttribute("msg",p.getUserName()+"的空间");
        return "userBackpage";
    }
    
//    //添加回答
//    @PostMapping("/addAnswer2")
//    public String addAnswer(Answer a, Model model){
//        userService.insertAnswer(a);
//        System.out.println(a);
//        model.addAttribute("Problem", userService.selectOneProblemById(a.getPId()));
//        model.addAttribute("AnswerList", userService.selectAllAnswerForOneProblem(a.getPId()));
//        model.addAttribute("user", new User(a.getUserName()));
//        return "ProblemDetail";
//    }

    @RequestMapping("/addAnswer")
    public String addAnswer2(Answer a, Model model){
        userService.insertAnswer(a);
//        @GetMapping("/selectProblemDetail/{pid}/{userName}")
        return "redirect:/users/selectProblemDetail/"+a.getPId()+"/"+a.getUserName();
    }
    
    //添加评论
    @PostMapping("/addRemark")
    public String addRemark(Remark r, Model model){
        userService.insertRemark(r);
        model.addAttribute("user", r);
//        @GetMapping("/selectSecretDetail/{sid}/{userName}")
        return "redirect:/users/selectSecretDetail/"+r.getSId()+"/"+r.getUserName();
    }
    
    
    /**************************************************/
    
    //更新用户信息
    @GetMapping("/selectUser/{userName}")
    public String selectUser(@PathVariable String userName, Model model){
        model.addAttribute("user", userService.getOneUserByName(userName));
        return "UpdateUser";
    }
    
    //用户更新
    @PostMapping("/updateUser")
    public String updateUser(User user, Model model){
        userService.updateUser(user);
        model.addAttribute("user", user);
        return "userBackpage";
    }
    
    
    /*************************************************/
    
    //删除一个用户
    @GetMapping("/deleteUser/{userName}")
    public String deleteUser(@PathVariable String userName){
        userService.deleteUser(userName);
        return "redirect:/index";
    }
    
    //删除一条秘密
    @PostMapping("/deleteSecret")
    @ResponseBody
    public void deleteSecret(int sid) {
        userService.deleteSecret(sid);
    }
    
    //删除一条评价
    @PostMapping("/deleteRemark")
    @ResponseBody
    public void deleteRemark(int rid) {
        userService.deleteRemark(rid);
    }
    
    //删除一条问题
    @PostMapping("/deleteProblem")
    @ResponseBody
    public void deleteProblem(int pid) {
        userService.deleteProblem(pid);
    }
    
    //删除一条回答
    @PostMapping("/deleteAnswer")
    @ResponseBody
    public void deleteAnswer(int aid) {
        userService.deleteAnswer(aid);
    }
    

    
    /**********************************************/
    
    //根据用户名查询一个用户的所有记录
    @GetMapping("/selectOneselfAll/{userName}")
    public String selectSecretOneself(@PathVariable String userName, Model model){
        model.addAttribute("secretList", userService.selectSecretByName(userName));
        model.addAttribute("problemList", userService.selectAllProblemByUsername(userName));
        model.addAttribute("answerList", userService.selectAllAnswerForUsername(userName));
        model.addAttribute("remarkList", userService.selectRemarkByUsername(userName));
        model.addAttribute("user", new User(userName));
        //System.out.println(username);
        return "oneselfAll";
    }
    
    //查询所有问题记录(无用户登录可用)
    @RequestMapping("/selectAllProblem")
    public String selectAllProblem(Model model){
        model.addAttribute("problemList", userService.selectAllProblem());
        return "OpenProblem";
    }
    
    //查询所有公开的秘密（无登录可用）
    @RequestMapping("/selectAllSecret")
    public String selectAllSecret(Model model){
        model.addAttribute("secretList", userService.selectSecret());
        return "OpenSecret";
    }
    
    //查询所有问题记录(用户登录可用)
    @GetMapping("/selectAllProblemWithUsername/{userName}")
    public String selectAllProblemWithUsername(@PathVariable String userName, Model model){
        model.addAttribute("problemList", userService.selectAllProblem());
        model.addAttribute("user", new User(userName));
        return "ProblemUsername";
    }
   
    //查询所有公开秘密(用户登录可用)
    @GetMapping("/selectAllSecretWithUsername/{userName}")
    public String selectAllSecretWithUsername(@PathVariable String userName, Model model){
        model.addAttribute("secretList", userService.selectSecret());
        model.addAttribute("user", new User(userName));
        return "SecretUsername";
    }
    
    //查询问题详情
    @GetMapping("/selectProblemDetail/{pid}/{userName}")
    public String selectProblemDetail(@PathVariable int pid,
                                      @PathVariable String userName,
                                      Model model){
        model.addAttribute("Problem", userService.selectOneProblemById(pid));
        model.addAttribute("AnswerList", userService.selectAllAnswerForOneProblem(pid));
        model.addAttribute("user", new User(userName));
        return "ProblemDetail";
    }
    
    //查询秘密详情
    @GetMapping("/selectSecretDetail/{sid}/{userName}")
    public String selectSecretDetail(@PathVariable int sid,
                                      @PathVariable String userName,
                                      Model model){
        model.addAttribute("Secret", userService.selectSecretById(sid));
        model.addAttribute("RemarkList", userService.selectRemarkBySid(sid));
        model.addAttribute("user", new User(userName));
        return "SecretDetail";
    }
}
