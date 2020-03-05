package bookshop.command;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.LogonDataBean;
import bookshop.bean.LogonDBBean;

public class RegisterProAction implements CommandAction{

	
	@Override
	public String requestPro(HttpServletRequest requset,HttpServletResponse response) throws Throwable{
		requset.setCharacterEncoding("UTF-8");
		
		// 회원 가입 정보
		LogonDataBean member = new LogonDataBean();
		member.setId(requset.getParameter("id"));
		member.setPasswd(requset.getParameter("passwd"));
		member.setName(requset.getParameter("name"));
		member.setReg_date(new Timestamp(System.currentTimeMillis()));
		member.setAddress(requset.getParameter("address"));
		member.setTel(requset.getParameter("tel"));
		
		//회원 가입 처라
		LogonDBBean dbPro = LogonDBBean.getInstance();
		dbPro.insertMember(member);
		
		return "/member/registerPro.jsp";
	}
}
