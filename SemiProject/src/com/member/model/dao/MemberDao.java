package com.member.model.dao;

import static com.member.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.StringTokenizer;

import com.member.model.exception.MemberException;
import com.member.model.vo.Member;

public class MemberDao {

	 private Properties prop;
	   
	   public MemberDao() {
	      prop = new Properties();
	      
	      String filePath = MemberDao.class.getResource("/config/member-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(filePath));
	      } catch(FileNotFoundException e) {
	         e.printStackTrace();
	      } catch(IOException e){
	         e.printStackTrace();
	      } 
	      
	   }
	
	
	
	public Member loginMember(Connection con, Member m) throws MemberException {

		PreparedStatement pstmt =null;

		ResultSet rset = null;


		Member mem = null;
		try {
			
			String sql = prop.getProperty("selectMember");
		

			pstmt = con.prepareStatement(sql);
		
			
			pstmt.setString(1, m.getEmpId());
			pstmt.setString(2, m.getEmpPwd());
			
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				
				mem = new Member();
				
				mem.setEmpNo(rset.getInt("EMP_NO"));
				mem.setEmpName(rset.getString("EMP_NAME"));
				mem.setEmpId(rset.getString("EMP_ID"));
				mem.setEmpPwd(rset.getString("EMP_PWD"));
				mem.setEmpSsn(rset.getString("EMP_SSN"));
				mem.setDeptName(rset.getString("DEPT_NAME"));
				mem.setJobName(rset.getString("JOB_NAME"));
				mem.setPhone(rset.getString("PHONE_NO"));
				mem.setHome(rset.getString("HOME_NO"));
				mem.setAddress(rset.getString("ADDRESS"));
				mem.setEmail(rset.getString("EMAIL"));
				mem.setEntYN(rset.getString("ENT_YN"));	
				
			}
			
		     
	      } catch(Exception e) {
//	         e.printStackTrace(); -> Throw
	         throw new MemberException(e.getMessage());
	      } finally {
	            close(rset);
	            close(pstmt);
	            
	      }
		return mem;
	}



	public int memberUpdate(Connection con, Member m) throws MemberException {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("memberUpdate");
		
		try {

			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getPhone());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getEmpPwd());
			pstmt.setString(4, m.getEmpId());
			
	     	result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			
		 throw new MemberException(e.getMessage());
			
			
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}



	public int memberAdd(Connection con, Member m) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("MemberAdd");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getEmpName());
			pstmt.setString(2, m.getEmpId());
			pstmt.setString(3, m.getEmpPwd());
				System.out.println(m.getEmpPwd());
			pstmt.setString(4, m.getEmpSsn());
			pstmt.setString(5, m.getDeptName());
			pstmt.setString(6, m.getJobName());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getHome());
			pstmt.setString(9, m.getAddress());
			pstmt.setString(10, m.getEmail());
			pstmt.setString(11, "Y");
			
			result = pstmt.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}



	public ArrayList<Member> memberList(Connection con) {

		
		Member m = null;
		
		ArrayList<Member> list = null;
		
		Statement stmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("memberList");
		
		try {
		
		list = new ArrayList<Member>();	
		
			
		stmt = con.createStatement();
		
		rset= stmt.executeQuery(sql);
		
		while(rset.next()) {
			
		m = new Member();		
		
		m.setEmpNo(rset.getInt("EMP_NO"));	
		m.setEmpName(rset.getString("EMP_NAME"));
		m.setEmpSsn(rset.getString("SUBSTR(EMP_SSN,1,6)"));
		m.setDeptName(rset.getString("DEPT_NAME"));
		m.setJobName(rset.getString("JOB_NAME"));
		String hireDate = String.valueOf(rset.getDate("HIRE_DATE"));
		m.setHireDate(hireDate);
		String entDate = String.valueOf(rset.getDate("ENT_DATE"));
		if(entDate.equals("null")) {
			m.setEntDate("재직중");	
		}else {
			m.setEntDate(entDate);
		}
			
				list.add(m);
		}
		
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}



	public Member adminMemberDetail(Connection con, int no) {

		System.out.println("DAO"+no);
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
				
		String sql = prop.getProperty("adminMemberDetail");
		
		try {
		
		m = new Member();	
			
		pstmt = con.prepareStatement(sql);
		
		pstmt.setInt(1, no);

		rset = pstmt.executeQuery();
		
		if(rset.next()) {
			
			
			m.setEmpName(rset.getString("EMP_NAME"));
			m.setEmpId(rset.getString("EMP_ID"));
			m.setEmpSsn(rset.getString("EMP_PWD"));
			m.setEmpSsn(rset.getString("EMP_SSN"));
			m.setDeptName(rset.getString("DEPT_NAME"));
			m.setJobName(rset.getString("JOB_NAME"));
			m.setPhone(rset.getString("PHONE_NO"));
			m.setHome(rset.getString("HOME_NO"));
			m.setAddress(rset.getString("ADDRESS"));
			m.setEmail(rset.getString("EMAIL"));
		
		}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}

}
