package handlers.appform;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import appform.AppFormService;
import handlers.Handler;

public class list implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int userid=Integer.parseInt(request.getParameter("userid"));
		AppFormService service=new AppFormService();
		request.setAttribute("list", service.getForm2(userid));
		request.setAttribute("view", "appform/list.jsp");
		return "index.jsp";
	}

}
