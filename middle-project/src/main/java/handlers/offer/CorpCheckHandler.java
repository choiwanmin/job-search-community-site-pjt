package handlers.offer;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.Corp;
import corp.CorpService;
import handlers.Handler;
import offer.Offer;
import offer.OfferService;

public class CorpCheckHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//제안 유저의 제안 상태 확인하기(거절,미응답,수락)
		//get 일 때만
		//>제안한 기업은 개인 회원들의 응답 상태를 확인할 수 있게 해주기
		//(다수의 제안을 볼 수 있으므로 ArrayList에 담아서 보내주기. 

		String view = "/index.jsp";
		
		String corpid = (String)request.getSession().getAttribute("loginId");
		CorpService cservice = new CorpService();
		Corp c = cservice.getByCorpId(corpid);
		int corpnum = c.getNum();
				
		OfferService service = new OfferService();
		ArrayList<Offer> list = service.getOfferCorp(corpnum);
		
		request.setAttribute("view", "/cropOffer/list.jsp");
		request.setAttribute("list", list);
		
		return view;
	}

}
