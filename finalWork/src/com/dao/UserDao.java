package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.JdbcUtil;
import com.bean.User;

public class UserDao {
/*
 * �����û�������ɹ�������true
 */
	public boolean insert(User u){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int num =0;
		try {
			String sql = "insert into user(id,count,password,email,phone,level) values(?,?,?,?,?,?);";
			conn = JdbcUtil.getConnection();
			conn.setAutoCommit(false);//����Ϊ�ֶ��ύ����
			pstmt = conn.prepareStatement(sql);
			u.setId(createId());
			pstmt.setString(1, u.getId());
			pstmt.setString(2, u.getCount());
			pstmt.setString(3, u.getPassword());
			pstmt.setString(4, u.getEmail());
			pstmt.setString(5, u.getPhone());
			pstmt.setInt(6, u.getLevel());
			num = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("�ع�����ʧ��");
			}
		} finally{
			JdbcUtil.free(null, pstmt, conn);
		}
		if(num==1)
			return true;
		else
			return false;	
	}
/*
 * ����һ�����ֱ�ţ���1.��N�У�Ѱ�ҿ�ȱ���
 */
	public String createId(){
		int id = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from user order by id asc;";
		try{
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs!=null){
				rs.next();
				do{
					if(id<rs.getInt(1))
						break;
					else
						id++;
				}while(rs.next());
			}
				
		}catch (SQLException e) {
		} finally{
			JdbcUtil.free(null, pstmt, conn);
		}
		return Integer.toString(id);
	}
/*	 
* * ��¼У���û��������룬���ڷ��ط�NULL��user
*/
	public User CountPwdIsExist(User u){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User u_obj = null;
		boolean flag = false;
		try{
			conn = JdbcUtil.getConnection();
			String sql = "select id,count from User where count=? and password =? lock in share mode;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getCount());
			pstmt.setString(2, u.getPassword());
			rs = pstmt.executeQuery();
			if(rs.next()){
				u_obj = new User();
				u_obj.setId(rs.getString(1));
				u_obj.setCount(rs.getString(2));
				u_obj.setLevel(Integer.parseInt(rs.getString(3)));
			}
				
		}catch (SQLException e) {
		} finally{
			JdbcUtil.free(rs, pstmt, conn);
		}
		return u_obj;
	}
/*
 * �����û����Ƿ���ڣ����ڷ���true
 */
	public boolean CountIsExist(User u){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try{
			conn = JdbcUtil.getConnection();
			String sql = "select * from User where count=? lock in share mode;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getCount());
			rs = pstmt.executeQuery();
			if(rs.next())
				flag = true;
		}catch (SQLException e) {
		} finally{
			JdbcUtil.free(rs, pstmt, conn);
		}
		return flag;
	}
/*
 * ���������Ƿ���ڣ����ڷ���true
 */
	public boolean EmailIsExist(User u){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try{
			conn = JdbcUtil.getConnection();
			String sql = "select * from User where email=? lock in share mode;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getEmail());
			rs = pstmt.executeQuery();
			if(rs.next())
				flag = true;
		}catch (SQLException e) {
		} finally{
			JdbcUtil.free(rs, pstmt, conn);
		}
		return flag;
	}
/*
 * �����ֻ��Ƿ���ڣ����ڷ���true
 */
	public boolean PhoneIsExist(User u){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try{
			conn = JdbcUtil.getConnection();
			String sql = "select * from User where phone=? lock in share mode;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getPhone());
			rs = pstmt.executeQuery();
			if(rs.next())
				flag = true;
		}catch (SQLException e) {
		} finally{
			JdbcUtil.free(rs, pstmt, conn);
		}
		return flag;
	}
}
