package handlers.scrap;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;
import person.Scrap;
import person.ScrapService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class ScrapListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="/person/info.jsp";
		String id=(String) request.getSession().getAttribute("loginId");
		ScrapService service =new ScrapService();
		RecruitListService rservice=new RecruitListService();
		PersonService pservice=new PersonService();
		Person p=pservice.getPerson(id);
		ArrayList<Scrap> list=service.getById(id);
		ArrayList<RecruitList> rlist=new ArrayList<>();
		for(Scrap s:list) {
			rlist.add(rservice.getByWantedAuthNo(s.getWanted_auth_no()));
			System.out.println(s.getWanted_auth_no());
		}
		
		request.setAttribute("person", p);
		request.setAttribute("list", rlist);
		request.setAttribute("view", "/scrap/list.jsp");
		return view;
	}

}
