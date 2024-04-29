package handlers.scrap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Scrap;
import person.ScrapService;

public class ScrapAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="/index.jsp";
		String userid = (String)request.getSession().getAttribute("loginId");
		String wanted_auth_no=request.getParameter("wanted_auth_no");
		ScrapService service =new ScrapService();
		service.add(new Scrap(0,userid,wanted_auth_no));
		view="redirect:"+view;
		request.setAttribute("view", "/recruit/recruitlist.jsp");
		return view;
	}

}
