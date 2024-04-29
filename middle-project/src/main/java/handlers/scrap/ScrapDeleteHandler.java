package handlers.scrap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.ScrapService;

public class ScrapDeleteHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="/person/info.jsp";
		String num=request.getParameter("num");
		String id=(String) request.getSession().getAttribute("loginId");
		ScrapService service =new ScrapService();
		System.out.println(num);
		service.delete(num,id);
		view="redirect:"+view;
		request.setAttribute("view", "/scrap/list.jsp");
		return view;
	}

}
