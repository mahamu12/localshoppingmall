package bookshop.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterFormAction implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		request.setAttribute("type",new Integer(1));
		return "/member/registerForm.jsp";
	}
}
