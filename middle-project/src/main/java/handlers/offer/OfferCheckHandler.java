package handlers.offer;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import offer.Offer;
import offer.OfferService;
import person.Person;
import person.PersonService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;
import recruitApply.RecruitApply;
import recruitApply.RecruitApplyService;

public class OfferCheckHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String userid = (String)request.getSession().getAttribute("loginId");
		String view = "/index.jsp";
		if (request.getMethod().equals("POST")) {//유저가 제안에 답을 보내는 것
			int accept = Integer.parseInt(request.getParameter("accept"));
			int num = Integer.parseInt(request.getParameter("num"));

			OfferService service = new OfferService();
			service.editOffer(accept, num);
			if(num==1) {//승낙이면 apply에도 추가하기
				String wantedAuthNo = (String)request.getSession().getAttribute("wantedAuthNo");
				
				RecruitListService rservice = new RecruitListService();
				RecruitList r = rservice.getByWantedAuthNo(wantedAuthNo);
				
				

				RecruitApplyService applyService = new RecruitApplyService();
				//applyService.addApply(new RecruitApply(wantedAuthNo,r.getWantedTitle(),userid,null,r.getBusiNo()));
			}
			
			//view = "redirect:/dataroom/list.do";(주소 정하기)
			
		}else {//유저가 제안 확인하기(리스트)(개별은 detail 가져오기)
			PersonService service = new PersonService();
			Person p = service.getPerson(userid);
			
			OfferService oservice = new OfferService();
			ArrayList<Offer> list = oservice.getOfferList(p.getNum());

			request.setAttribute("view", "/useroffer/list.jsp");
			request.setAttribute("list", list);
			
		}
			
		return view;
	}
}
