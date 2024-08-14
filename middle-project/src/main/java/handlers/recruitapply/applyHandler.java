package handlers.recruitapply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;
import recruitApply.RecruitApply;
import recruitApply.RecruitApplyService;

public class applyHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//공고 최초 지원하기
		String view = "/person/info.jsp";
		//post=처음 회사 정보 등록(db에 추가)
		if(request.getMethod().equals("GET")) {
			//지원자 ID
			String userid = (String)request.getSession().getAttribute("loginId");
			PersonService pservice = new PersonService();
			Person p = pservice.getPerson(userid);
			int num = p.getNum();
			
			//공고 번호 가져오기
			String wanted_auth_no = request.getParameter("wanted_auth_no");
			RecruitListService list = new RecruitListService();

			RecruitListService rservice = new RecruitListService();
			RecruitList r = rservice.getByWantedAuthNo(wanted_auth_no);
			RecruitApplyService applyService = new RecruitApplyService();

			applyService.addApply(new RecruitApply(wanted_auth_no,r.getWantedTitle(),num,null,r.getBusiNo()));
					
			view="redirect:/index.jsp";
		}else {//지원 공고 리스트 보기
			//지원자 ID
			String userid = (String)request.getSession().getAttribute("loginId");
			PersonService pservice = new PersonService();
			Person p = pservice.getPerson(userid);
			int num = p.getNum();
			RecruitApplyService rservice = new RecruitApplyService();
			ArrayList<RecruitApply> list = rservice.getUserList(num);
			
			
			request.setAttribute("view", "/recruit/recruitdetail.jsp");
			request.setAttribute("list", list);
		}
		return view;
	}

}
