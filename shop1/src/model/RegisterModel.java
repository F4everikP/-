package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;
import javaBean.User;

public class RegisterModel {

    public int adduser(HttpServletRequest request, HttpServletResponse response) {
        int a = -1;
        //获取单个参数
        User user = new User();
        String name = request.getParameter("name");
        user.setName(name);

        String password = request.getParameter("password");
        user.setPassword(password);

        int age = Integer.parseInt(request.getParameter("age"));
        user.setAge(age);

        int sex = Integer.parseInt(request.getParameter("sex"));
        user.setSex(sex);

        System.out.println("注册用户信息:"+name+password+age+sex);
        UserDao userDao = new UserDao();
        userDao.insertUser(user);
        return a;
    }
}
