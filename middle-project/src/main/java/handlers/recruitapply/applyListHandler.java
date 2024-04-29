package handlers.recruitapply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;
import recruitApply.RecruitApply;
import recruitApply.RecruitApplyService;

public class applyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String id=(String)request.getSession().getAttribute("loginId");
		PersonService pservice = new PersonService();
		Person p = pservice.getPerson(id);
		int num = p.getNum();
		RecruitApplyService applyService = new RecruitApplyService();
		ArrayList<RecruitApply> list=applyService.getUserList(num);
		System.out.println(list.get(0).getWanted_title());
		request.setAttribute("list", list);
		request.setAttribute("view", "/apply/list.jsp");
		return "/person/info.jsp";
	}

}
