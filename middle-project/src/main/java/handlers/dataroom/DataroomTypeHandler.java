package handlers.dataroom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataroom.Data;
import dataroom.DataService;
import handlers.Handler;
import page.GeneralPage;

public class DataroomTypeHandler implements Handler {

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
		int type = Integer.parseInt(request.getParameter("type"));

		ArrayList<ArrayList<Data>> paging=null;
		HttpSession session = request.getSession();// 현재 사용중인 세션을 반환.
		
		if(type==6) {
			list = service.getByMyFavo((String) session.getAttribute("loginId"),viewtype);
			paging=page.paging(list, 10);
		}else {
			list = service.getByType(type,viewtype);
			paging=page.paging(list, 10);
		}
		request.setAttribute("list", paging.get(rnum-1));
		request.setAttribute("type", type);
		request.setAttribute("pnum", pnum-1);
		request.setAttribute("pnume", pnum+3);
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("view", "/dataroom/list.jsp");
		request.setAttribute("paging", paging);

		return view;
	}

}
