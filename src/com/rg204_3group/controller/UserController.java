package com.rg204_3group.controller;

import com.rg204_3group.base.BaseController;
import com.rg204_3group.po.Item;
import com.rg204_3group.po.ItemCategory;
import com.rg204_3group.po.User;
import com.rg204_3group.service.UserService;
import com.rg204_3group.utils.Consts;
import com.rg204_3group.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * 用户c层
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findBySql")
    public String findBySql(Model model,User user){
        String sql = "select * from user where 1=1 ";
        if(!isEmpty(user.getUserName())){
            sql += " and userName like '%"+user.getUserName()+"%' ";
        }
        sql+=" order by id";
        Pager<User> pagers = userService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",user);
        return "user/user";
    }

    /**
     * 查看用户信息
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/view")
    public String view(Model model, HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        Integer userId = Integer.valueOf(attribute.toString());
        User obj = userService.load(userId);
        model.addAttribute("obj",obj);
        return "user/view";
    }

    /**
     * 执行修改用户信息的操作
     */
    @RequestMapping("/exUpdate")
    public String exUpdate(User user,HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        user.setId(Integer.valueOf(attribute.toString()));
        userService.updateById(user);
        return "redirect:/user/view.action";
    }
    /***
     * 添加用户信息功能
     */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from user ";
        List<User> listBySqlReturnEntity = userService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        return "user/add";
    }
    /***
     *执行添加功能
     */
    @RequestMapping("/exAdd")
    public String exAdd(User user) throws IOException{
        userService.insert(user);
        return "redirect:/user/findBySql.action";
    }
    /**
     * 删除操作
     */
    @RequestMapping("/delete")
    public String delete(Integer id){
        userService.deleteById(id);
        return "redirect:/user/findBySql";
    }
    /**
     * 修改用户入口
     */
    @RequestMapping("/update")
    public String update(Integer id,Model model){
        User obj = userService.load(id);
        String sql = "select * from user";
        List<User> listBySqlReturnEntity = userService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        model.addAttribute("obj",obj);
        return "user/update";
    }
    /**
     * 执行用户修改
     */
   @RequestMapping("/Exupdate")
    public String Exupdate(User user,HttpServletRequest request)
   {
       Object attribute = request.getSession().getAttribute(Consts.USERID);
       user.setId(Integer.valueOf(attribute.toString()));
       userService.updateById(user);
       return "redirect:/user/findBySql";
   }
}
