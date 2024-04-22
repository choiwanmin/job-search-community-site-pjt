package handlers.dataroom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataroom.Data;
import dataroom.DataService;
import handlers.Handler;

public class DataroomTypeHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		DataService service = new DataService();
		int viewtype = Integer.parseInt(request.getParameter("viewtype"));
		int type = Integer.parseInt(request.getParameter("type"));
		ArrayList<Data> list = null;
		HttpSession session = request.getSession();// 현재 사용중인 세션을 반환.
		
		if(type==6) {
			list = service.getByMyFavo((String) session.getAttribute("loginId"));
		}else {
			list = service.getByType(type,viewtype);
		}
		
		request.setAttribute("list", list);
		request.setAttribute("type", type);
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("view", "/dataroom/list.jsp");
		return view;
	}

}
