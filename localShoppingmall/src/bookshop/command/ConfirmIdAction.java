package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.LogonDBBean;


public class ConfirmIdAction implements CommandAction {
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable{
		
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		//주어진 id의 중복 여부를 체크해 값을 반환
		LogonDBBean manager = LogonDBBean.getInstance();
		int check = manager.confirmId(id);
		
		request.setAttribute("check",new Integer(check));
		return "/member/confirmId.jsp";
	}
}
