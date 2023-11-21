package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class AccountListDAO {
	
	SqlSessionFactory factory = SqlSessionManager.getSqlSession();
	
	SqlSession session = factory.openSession(true);
	
	public AccountList firstJoinCheck(AccountList list) {
		AccountList row = null;
		try {
			row = session.selectOne("database.AccountMapper.firstJoinCheck", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		System.out.println(row);
		return row;
	}

	public int firstJoinAccount(AccountList list) {
		int row = 0;
		try {
			row = session.insert("database.AccountMapper.firstJoinAccount", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		System.out.println(row);
		return row;
	}

	public int changeAccount(AccountList list) {
		int row = 0;
		try {
			row = session.update("database.AccountMapper.changeAccount", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}

	public int RemoveAccount(AccountList list) {
		int row = 0;
		try {
			row = session.delete("database.AccountMapper.deleteAccount", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}
}
