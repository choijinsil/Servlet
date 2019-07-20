package guest.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import guest.vo.Guest;
import iba.MySqlMapClient;

public class GuestDAO {
	SqlMapClient smc;

	public GuestDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}

	public boolean insert(Guest guest) {

		try {
			Object ob = smc.insert("guestinfo.insert", guest);
			System.out.println("ob>>" + ob);
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Guest> selectAll() throws SQLException {
		// List는 행의 갯수
		List<Guest> list = smc.queryForList("guestinfo.selectAll");
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getWriter());
		}
		return list;

	}

	public Guest selectById(int no) {
		Guest vo = new Guest();
		try {
			vo = (Guest) smc.queryForObject("guestinfo.selectById", no);
			return vo;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	public boolean update(Guest guest) {

		try {
			if (smc.update("guestinfo.update", guest) == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	// delete 기능 ㅅ정중
	public boolean delete(int no) {
		try {
			if (smc.delete("guestinfo.delete", no) == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}

}
