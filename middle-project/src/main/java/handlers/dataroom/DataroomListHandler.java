package handlers.dataroom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataroom.Data;
import dataroom.DataService;
import handlers.Handler;
import page.GeneralPage;

public class DataroomListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		DataService service = new DataService();
		ArrayList<Data> list = null;
		GeneralPage<Data> page=new GeneralPage<>();
		ArrayList<ArrayList<Data>> paging=null;
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
		if(viewtype==1) {
			list = service.getAll();
			paging=page.paging(list, 10);
		}else if(viewtype==2) {
			list = service.getByCnt();
			paging=page.paging(list, 10);
		}else if(viewtype==3) {
			list = service.getByFcnt();
			paging=page.paging(list, 10);
		}
		request.setAttribute("viewtype", viewtype);
		request.setAttribute("pnum", pnum-1);
		request.setAttribute("pnume", pnum+3);
		request.setAttribute("list", paging.get(rnum-1));
		request.setAttribute("view", "/dataroom/list.jsp");
		request.setAttribute("paging", paging);
		return view;
	}

}
