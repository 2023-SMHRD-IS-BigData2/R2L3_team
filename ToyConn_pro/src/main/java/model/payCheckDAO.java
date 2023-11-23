package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;
import model.pcUpdateDTO;

public class payCheckDAO {
	SqlSessionFactory sqlSessionFactory =  SqlSessionManager.getSqlSession();
	
	// Factory를 사용해서 세션 생성(DB연결, close(), sql 실행)
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int setPayCheck(payCheckDTO vo){
		int cnt = 0;
		try {
			cnt = sqlSession.insert("setPayCheck", vo);
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<payCheckDTO> getPayCheck(String user_id){
		List<payCheckDTO> list=null;
		try {
			list = sqlSession.selectList("getPayCheck", user_id);
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}

	public int updatePayCheck(pcUpdateDTO vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("updatePayCheck", vo);
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	public List<lenderPayCheckDTO> getLendPayCheck (String lender_id){
		List<lenderPayCheckDTO> li=null;
		try {
			li = sqlSession.selectList("getLendPayCheck", lender_id);
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			sqlSession.close();
		}
		if(li!=null)
			System.out.println("list가 넣어져있습니다.");
		
		return li;
	}
}
