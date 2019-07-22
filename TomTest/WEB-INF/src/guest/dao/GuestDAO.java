package guest.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

	public List<Guest> selectAll(int page) throws SQLException {
		// List는 행의 갯수
		// List<Guest> list = smc.queryForList("guestinfo.selectAll");
		// skip- 조회행중 건너뛰기할 행의 수, max: 조회할 최대 행 수
		List<Guest> list = smc.queryForList("guestinfo.selectAll", page * 10 - 10, 10);
		return list;
	}

	public Integer selectTotalPage() throws SQLException {
		return (Integer) smc.queryForObject("guestinfo.selectTotalPage");
		
	}

//	public List<Guest> selectPage(Map<String, Integer> map) throws SQLException {
//		// List는 행의 갯수
//		List<Guest> list = smc.queryForList("guestinfo.selectPage", map);
//		// map(start1, end10)
//		return list;
//	}

	public Guest selectById(int no) throws SQLException {
		Guest vo = new Guest();
		vo = (Guest) smc.queryForObject("guestinfo.selectById", no);
		return vo;
	}

	public boolean update(Guest guest) throws SQLException {

		if (smc.update("guestinfo.update", guest) == 1) {
			return true;
		}
		return false;
	}

	// delete 기능 수정중
	public boolean delete(int no) throws SQLException {
		if (smc.delete("guestinfo.delete", no) == 1) {
			return true;
		}
		return false;

	}

}
