package handlers.dataroom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataroom.Data;
import dataroom.DataService;
import handlers.Handler;
import page.GeneralPage;

public class DataroomSearchHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		DataService service = new DataService();
		ArrayList<Data> list = null;
		
		GeneralPage<Data> page=new GeneralPage<>();
		String num=request.getParameter("num");

		int rnum=0; 
		if(num!=null) {
			rnum=Integer.parseInt(num);
		}
		int pnum=0;
		if(rnum>=1) {
			pnum=rnum-1;
		}
		int viewtype = Integer.parseInt(request.getParameter("viewtype"));
		ArrayList<ArrayList<Data>> paging=null;
		int searchtype = Integer.parseInt(request.getParameter("searchtype"));
		String search = request.getParameter("search");

		list = service.getBySearchType(search, searchtype, viewtype);
		
		paging=page.paging(list, 2);


		request.setAttribute("pnum", pnum);
		request.setAttribute("pnume", pnum+5);
		request.setAttribute("search", search);
		request.setAttribute("searchtype", searchtype);
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("list", paging.get(rnum));
		request.setAttribute("view", "/dataroom/list.jsp");
		request.setAttribute("paging", paging);
		return view;
	}
}
