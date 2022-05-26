package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import common.DBUtil;
import javaBean.User;

public class UserDao {

    public UserDao() {
        // TODO Auto-generated constructor stub

    }

    DBUtil dbutil=new DBUtil();
    //用户的查询
    public boolean isSelectUser(User user) throws SQLException {
        System.out.println("数据库");
        boolean flag=false;
        String sql="SELECT * from shop1 WHERE userId='"+user.getId()+"' and userName='"+user.getName()+"' and password='"+user.getPassword()+"' ";
        System.out.println("sql:"+sql);

        ResultSet rSet=dbutil.executeQuery(sql);
        flag=rSet.next();
        return flag;
    }
    //用户注册
    public int insertUser(User user) {
        int a=-1;
        String sql="INSERT INTO shop1( `userName`, `password`, `sex`, `age`) VALUES ('"+user.getName()+"', '"+user.getPassword()+"', '"+user.getSex()+"', '"+user.getAge()+"')";
        a=dbutil.executeUpdate(sql);
        System.out.println("sql:"+sql);
        return a;
    }

}


