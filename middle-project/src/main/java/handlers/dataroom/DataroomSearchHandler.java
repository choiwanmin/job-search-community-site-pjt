package handlers.dataroom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataroom.Data;
import dataroom.DataService;
import handlers.Handler;

public class DataroomSearchHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		DataService service = new DataService();
		ArrayList<Data> list = null;
		
		int searchtype = Integer.parseInt(request.getParameter("searchtype"));
		String search = request.getParameter("search");
		int viewtype = Integer.parseInt(request.getParameter("viewtype"));
		
		list = service.getBySearchType(search, searchtype, viewtype);
		
		
		request.setAttribute("search", search);
		request.setAttribute("searchtype", searchtype);
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("list", list);
		request.setAttribute("view", "/dataroom/list.jsp");
		return view;
	}

}
