package com.encore.t0717.dao;

import java.sql.SQLException;
import java.util.List;

import com.encore.t0717.vo.UserInfo;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class UserInfoDAO {
	// 추가 삭제 수정 메소드

	SqlMapClient sqlMap; // xml문서내의 sql문 호출 :=

	public UserInfoDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}

	public boolean create(UserInfo user) {
		try {
			Object ob=sqlMap.insert("userInfo.create", user);
			System.out.println("ob>>"+ob);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean modify(UserInfo user) throws SQLException {
		int t = sqlMap.update("userInfo.modify", user);
		if (t > 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean remove(String id) throws SQLException {
		if(sqlMap.delete("userInfo.remove",id)==1) {
			return true;
		}
		return false;
	}

	public UserInfo select(String id) throws SQLException {
		return (UserInfo) sqlMap.queryForObject("userInfo.select", id);

	}
	
	public int selectById(String id) throws SQLException {
		return (int) sqlMap.queryForObject("userInfo.selectById", id);
	}
	

	public List<UserInfo> findAll() {
		return null;
		// array와 list의 차이점
		// 고정 가변이다
	}

	public String selectLogin(String id) throws SQLException {

		return (String) sqlMap.queryForObject("userInfo.selectLogin", id);
//		String pass = null;
//		try {
//			pass = (String) sqlMap.queryForObject("userinfo.selectLogin", id);
//			return pass;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return pass;
	}

}
