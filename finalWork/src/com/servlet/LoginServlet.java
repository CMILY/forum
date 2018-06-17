package com.servlet;

import com.dao.UserDao;
import com.bean.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao u_dao = new UserDao();
		User u_obj = new User();
		//��ȡ����¼����
		request.setCharacterEncoding("utf-8");
		u_obj.setCount(request.getParameter("count"));
		u_obj.setPassword(request.getParameter("password"));
		//��¼��֤
		u_obj = u_dao.CountPwdIsExist(u_obj);
		//��֤�ɹ��������û���š��û�����Ȩ����session;ʧ�ܣ�ת����Ϣ��ʾҳ
		if(u_obj!=null){
			request.getSession().setAttribute("u_id", u_obj.getId());
			request.getSession().setAttribute("u_count", u_obj.getCount());
			request.getSession().setAttribute("u_level", Integer.toString(u_obj.getLevel()));
			response.sendRedirect(request.getContextPath()+"/Index.jsp");
		}
		else{
			request.setAttribute("info", "�˺Ż������������������");
			request.getRequestDispatcher("/InfoOutput.jsp").forward(request, response);	
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
