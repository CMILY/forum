package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取注册参数
		request.setCharacterEncoding("utf-8");
		String count = request.getParameter("count");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int level = Integer.parseInt(request.getParameter("level"));
		String code = request.getParameter("code");
		//实例化User对象
		User u_obj = new User();
		u_obj.setCount(count);
		u_obj.setPassword(password1);
		u_obj.setEmail(email);
		u_obj.setPhone(phone);
		u_obj.setLevel(level);
		UserDao u_dao = new UserDao();
		boolean flag = true;	//标志变量。符合注册标准，置true;任一项不符合，置false
		//空值校验
		if(count.isEmpty()||password1.isEmpty()||password2.isEmpty()||email.isEmpty()||phone.isEmpty()){
			request.setAttribute("info", "以上信息均为必填，请重新输入");
			flag = false;
		}
		//密码校验	
		else if(!password1.equals(password2)){
			request.setAttribute("info", "两次密码不一致，请重新输入");
			flag = false;
		}
		//用户名、手机号、邮箱，重复值
		else if(u_dao.CountIsExist(u_obj)){
			request.setAttribute("info", "用户名已注册，请重新输入");
			flag = false;
		}
		else if(u_dao.EmailIsExist(u_obj)){
			request.setAttribute("info", "邮箱已注册，请重新输入");
			flag = false;
		}
		else if(u_dao.PhoneIsExist(u_obj)){	
			request.setAttribute("info", "手机已注册，请重新输入");
			flag = false;
		}
		//管理员权限码校验
		else if(level==0&&!code.equals("admin")){
			request.setAttribute("info", "管理员注册码错误，请重新输入");
			flag = false;
		}
		
		if(flag){
			if(u_dao.insert(u_obj))
				request.setAttribute("info", "注册成功，用户编号："+u_obj.getId());
			else
				request.setAttribute("info", "注册失败，User信息插入错误，用户编号："+u_obj.getId());
		}
		request.getRequestDispatcher("/InfoOutput.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
