package handlers.offer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comment.Comment;
import comment.CommentService;
import corp.Corp;
import corp.CorpService;
import handlers.Handler;
import offer.Offer;
import offer.OfferService;
import person.Person;
import person.PersonService;

public class OfferHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//기업 제안 핸들러
		String view = "/index.jsp";
		if (request.getMethod().equals("POST")) {
			//유저ID 파라미터로 넘겨주기
			int personNum = Integer.parseInt(request.getParameter("personNum"));
			
			//제안 회사 및 공고 정보
			String wanted_auth_no = (String)request.getAttribute("wanted_auth_no");
			String corpid = (String)request.getSession().getAttribute("loginId");
			CorpService service = new CorpService();
			Corp c= service.getByCorpId(corpid);
			int corpNum = c.getNum();
			
			OfferService oservice = new OfferService();
			oservice.addOffer(new Offer(0,corpNum,wanted_auth_no,personNum,null,0));
		}
		return view;
	}

}
