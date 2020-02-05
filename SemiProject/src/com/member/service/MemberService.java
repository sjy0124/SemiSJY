package com.member.service;

import static com.member.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.member.model.dao.MemberDao;
import com.member.model.exception.MemberException;
import com.member.model.vo.Member;
public class MemberService {

	MemberDao mDao = new MemberDao();
	
	public MemberService() {
		
	}

	public Member loginMember(Member m) throws MemberException {

		
		Connection con = getConnection();
		
		Member mem = mDao.loginMember(con,m);
		
		return mem;
		
		
	}

	public int memberUpdate(Member m) throws MemberException {

		Connection con = getConnection();
		
		int result = mDao.memberUpdate(con,m);
				
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public void MemberAdd(Member m) {

		Connection con = getConnection();
		
		int result = mDao.memberAdd(con,m);
		
		if(result >0) commit(con);
		else rollback(con);
		
		close(con);
		
		
				
		
	}

	public ArrayList<Member> MemberList() {

		
		System.out.println("service");
		
		Connection con = getConnection();
		
		ArrayList<Member> result = mDao.memberList(con);
		
		close(con);
		
		return result;
		
		
	}

	public Member adminMemberDetail(int no) {

		Member m = new Member();
		
		Connection con = getConnection();
		
		m = mDao.adminMemberDetail(con, no);
		
		close(con);
		
		return m;
	}
	
}
