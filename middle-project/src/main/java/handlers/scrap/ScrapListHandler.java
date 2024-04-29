package handlers.scrap;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Scrap;
import person.ScrapService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class ScrapListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="";
		String id=request.getParameter("userid");
		ScrapService service =new ScrapService();
		RecruitListService rservice=new RecruitListService();
		ArrayList<Scrap> list=service.getById(id);
		ArrayList<RecruitList> rlist=new ArrayList<>();
		for(Scrap s:list) {
			rlist.add(rservice.getByWantedAuthNo(s.getWanted_auth_no()));
		}
		
		
		request.setAttribute("rlist", list);
		return view;
	}

}
