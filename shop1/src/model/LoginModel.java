package model;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;
import javaBean.User;

public class LoginModel {

    public int loginto(HttpServletRequest request, HttpServletResponse response) {
        int a = -1;
        System.out.println("用户登录");
        //获取单个参数
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        System.out.println("用户ID:"+id);
        System.out.println("用户名:"+name);
        System.out.println("用户密码:"+password);
        User user = new User(id,name,password);
        UserDao userDao = new UserDao();

        try {
            if (userDao.isSelectUser(user)) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }else {
                System.out.println("用户登录失败");
                //传递参数
                request.setAttribute("errMsg", "用户名错误！");
                //转发
//                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException | ServletException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return a;
    }
}
