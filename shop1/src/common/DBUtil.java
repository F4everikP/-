package common;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBUtil {
    private static final String URL="jdbc:mysql://localhost:3306/shop"+"?CharacterEncoding=utf-8";
    private static final String LOGIN="root";
    private static final String PASSWORD="123456";
    //成员变量三个
    Connection conn=null;
    Statement st=null;
    private ResultSet rs=null;
    public ResultSet getRs() {
        return rs;
    }
    public void setRs(ResultSet rs) {
        this.rs=rs;
    }
    void getConnection() {//1.连接数据库
        try {
            //第一步：加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            //第二步：连接数据库
            conn=DriverManager.getConnection(URL,LOGIN,PASSWORD);
            System.out.println("数据库连接成功");
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
            System.out.println("数据库连接错误，请检查驱动程序是否存在，驱动名是否正确");
        }
    }


    public ResultSet executeQuery(String sql) {
        try {
            if(st==null) {
                getConnection();
                st=conn.createStatement();
            }
            rs=st.executeQuery(sql);
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("数据库查询执行错误，请检查sql："+sql);
        }
        return rs;
    }

    //3.数据库的增删改
    public int executeUpdate(String sql) {
        int ret=0;
        try {
            //第三步：创建用于执行sql语句的对象
            if(st==null) {
                getConnection();
                st=conn.createStatement();
            }
            //第四步：执行sql语句
            ret=st.executeUpdate(sql);
        }catch(SQLException e) {
            e.printStackTrace();
            ret=-1;
            System.out.println("数据库增删改执行错误，请检查sql："+sql);
        }
        return ret;
    }
    //4.数据库的关闭
    public void close(){
        try {
            if (rs!=null) {
                rs.close();
            }
            if (st!=null) {
                st.close();
            }
            if (conn!=null) {

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    /*
     * public boolean update(String string) { // TODO 自动生成的方法存根 return false; }
     * public ResultSet query(String string) { // TODO 自动生成的方法存根 return null; }
     */

}
