<%--
  Created by IntelliJ IDEA.
  User: 150099
  Date: 2021/12/28
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>网上书店 主页</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/css1.css"/>
  </head>
  <body>
  <div id="max">
    <nav class="navg">
      <ul class="head" id="head">
        <li >
          <a href="http://127.0.0.1:8848/SBtx/1.html">首页</a>
          <!-- <ul class="submenu">
              <li><a href="#">1第一个</a></li>
              <li><a href="#">1第二个</a></li>
              <li><a href="#">1第三个</a></li>
          </ul> -->
        </li>
        <li >
          <a href="http://127.0.0.1:8848/SBtx/2.html">商品分类</a>
          <ul class="submenu">
            <li><a href="#">电器</a></li>
            <li><a href="#">生活用品</a></li>
            <li><a href="#">叙利亚补给品</a></li>
          </ul>
        </li>
        <li >
          <a href="http://127.0.0.1:8848/SBtx/3.html">店铺</a>
          <!-- <ul class="submenu">
              <li><a href="#">3第一个</a></li>
              <li><a href="#">3第二个</a></li>
              <li><a href="#">3第三个</a></li>
          </ul> -->
        </li>
        <li >
          <a href="http://127.0.0.1:8848/SBtx/4.html">购物车</a>
          <!-- <ul class="submenu">
              <li><a href="#">4第一个</a></li>
              <li><a href="#">4第二个</a></li>
              <li><a href="#">4第三个</a></li>
          </ul> -->
        </li>
        <li class="user0">
          <a href="http://127.0.0.1:8848/SBtx/5.html">个人中心</a>
          <!-- <ul class="submenu">
              <li><a href="#">5第一个</a></li>
              <li><a href="#">5第二个</a></li>
              <li><a href="#">5第三个</a></li>
          </ul> -->
        </li>
        <li class="user"><a href="javascript:void(0);" id="openLogin">未登录，请先登录</a></li>
      </ul>
    </nav>

    <div class="box">
      <div class="bbox">
        <ul class="content" id="con">
          <li class="pic1"><a href="#"><img src="img/pics1.png" ></a></li>
          <li class="pic2"><a href="#"><img src="img/pi2.png" ></a></li>
          <li class="pic3"><a href="#"><img src="img/pi3.png" ></a></li>
        </ul>
      </div>
      <div>
        <ul class="nav" id="pbox">
          <li class="on"><a href="javascript:void(0)">iphone 13</a></li>
          <li><a href="javascript:void(0)">Watch Series 7</a></li>
          <li><a href="javascript:void(0)">iphone 13 Pro</a></li>
        </ul>
      </div>
    </div>


    <div class="phone1">
      <p class="phone2">商品推荐</p>

      <div class="phone3">
        <div>
          <a href="#"><img src="img/a1.png" ></a>
          <p>Airpods(第三代)</p>
          <p>1399元</p>
        </div>
        <div>
          <a href="#"><img src="img/a2.png" ></a>
          <p>Watch Series 7</p>
          <p>2999元</p>
        </div>
        <div>
          <a href="#"><img src="img/a3.png" ></a>
          <p>ipad mini</p>
          <p>3799元</p>
        </div>
        <div>
          <a href="#"><img src="img/a4.png" ></a>
          <p>ipad</p>
          <p>2499元</p>
        </div>
        <div>
          <a href="#"><img src="img/a5.png" ></a>
          <p>Beats Studio Buds</p>
          <p>1099元</p>
        </div>
        <div>
          <a href="#"><img src="img/a6.png" ></a>
          <p>iphone 13 pro</p>
          <p>7999元</p>
        </div>
        <div>
          <a href="#"><img src="img/a7.png" ></a>
          <p>MacBook pro</p>
          <p>14999元</p>
        </div>
        <div>
          <a href="#"><img src="img/a8.png" ></a>
          <p>Homepod mini</p>
          <p>749元</p>
        </div>
      </div>
    </div>
  </div>

  <div class="login" id="login">
    <a href="javascript:void(0);" id="close" class="guanbi">关闭</a>
    <form action="/LoginServlet" method="post">
      <div id="div1" >用户名：<input type="text" name="id" id="" placeholder="ID" /></div>
<%--      <div>昵称：<input type="text" name="name" placeholder="昵称" /></div>--%>
      <div>密码：<input type="password" name="password" placeholder="密码" /></div>
      <div class="sub"><button type="submit"><a href="${pageContext.request.contextPath }/LoginServlet">登  陆</a></button></div>
    </form>
    <a style="display:block; margin-left: 430px;padding-top: 15px;" href="http://localhost:8080/shop1_war_exploded/register.jsp">没有账号，我要注册</a>
  </div>

  </body>
  <script src="js/js1.js" type="text/javascript" charset="utf-8"></script>
</html>
