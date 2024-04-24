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
		int rnum=1;
		if(num!=null) {
			rnum=Integer.parseInt(num);
		}
		int pnum=rnum;
		if(pnum>=3) {
			pnum=pnum-2;
		}
		else {
			pnum=1;
		}
		int viewtype = Integer.parseInt(request.getParameter("viewtype"));
		ArrayList<ArrayList<Data>> paging=null;
		int searchtype = Integer.parseInt(request.getParameter("searchtype"));
		String search = request.getParameter("search");
		list = service.getBySearchType(search, searchtype, viewtype);
		if(list.size()<1) {
			request.setAttribute("view", "/dataroom/list.jsp");
			request.setAttribute("msg", "검색 결과 없음");
			return view;
		}
		paging=page.paging(list, 10);
		

		request.setAttribute("pnum", pnum-1);
		request.setAttribute("pnume", pnum+3);
		request.setAttribute("search", search);
		request.setAttribute("searchtype", searchtype);
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("list", paging.get(rnum-1));
		request.setAttribute("view", "/dataroom/list.jsp");
		request.setAttribute("paging", paging);
		return view;
	}
}
