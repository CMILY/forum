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
		//��ȡע�����
		request.setCharacterEncoding("utf-8");
		String count = request.getParameter("count");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int level = Integer.parseInt(request.getParameter("level"));
		String code = request.getParameter("code");
		//ʵ����User����
		User u_obj = new User();
		u_obj.setCount(count);
		u_obj.setPassword(password1);
		u_obj.setEmail(email);
		u_obj.setPhone(phone);
		u_obj.setLevel(level);
		UserDao u_dao = new UserDao();
		boolean flag = true;	//��־����������ע���׼����true;��һ����ϣ���false
		//��ֵУ��
		if(count.isEmpty()||password1.isEmpty()||password2.isEmpty()||email.isEmpty()||phone.isEmpty()){
			request.setAttribute("info", "������Ϣ��Ϊ�������������");
			flag = false;
		}
		//����У��	
		else if(!password1.equals(password2)){
			request.setAttribute("info", "�������벻һ�£�����������");
			flag = false;
		}
		//�û������ֻ��š����䣬�ظ�ֵ
		else if(u_dao.CountIsExist(u_obj)){
			request.setAttribute("info", "�û�����ע�ᣬ����������");
			flag = false;
		}
		else if(u_dao.EmailIsExist(u_obj)){
			request.setAttribute("info", "������ע�ᣬ����������");
			flag = false;
		}
		else if(u_dao.PhoneIsExist(u_obj)){	
			request.setAttribute("info", "�ֻ���ע�ᣬ����������");
			flag = false;
		}
		//����ԱȨ����У��
		else if(level==0&&!code.equals("admin")){
			request.setAttribute("info", "����Աע�����������������");
			flag = false;
		}
		
		if(flag){
			if(u_dao.insert(u_obj))
				request.setAttribute("info", "ע��ɹ����û���ţ�"+u_obj.getId());
			else
				request.setAttribute("info", "ע��ʧ�ܣ�User��Ϣ��������û���ţ�"+u_obj.getId());
		}
		request.getRequestDispatcher("/InfoOutput.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
