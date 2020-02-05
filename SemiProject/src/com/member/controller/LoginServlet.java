package com.member.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.MembershipService;

import com.member.model.exception.MemberException;
import com.member.model.vo.Member;
import com.member.service.MemberService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Calendar today = new GregorianCalendar();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		System.out.println(id);
		System.out.println(pw);
		
		Member m = new Member(id, pw);
		
		MemberService ms = new MemberService();
		
		
		try {
			
			m = ms.loginMember(m);
			
			
			String brithday = null;
			StringTokenizer strToken = new StringTokenizer(m.getEmpSsn());
			brithday= strToken.nextToken("-");
			m.setEmpSsn(brithday);
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();
			
			
			session.setAttribute("member",m);
		
			
			
			
			response.sendRedirect("views/mainpage.jsp");
			
			
		} catch (MemberException e) {
			request.setAttribute("msg", "회원 로그인 실패");
			
//			request.getRequestDispatcher("views/common/erroePage.jsp").forward(request, response);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
