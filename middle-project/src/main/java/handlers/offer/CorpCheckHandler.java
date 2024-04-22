package handlers.offer;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		//기업 id로 검색)
		String view = "/index.jsp";
		OfferService service = new OfferService();
		
		String corpid = (String)request.getSession().getAttribute("loginId");
		
		ArrayList<Offer> list = service.getOfferCorp(0);

		
		
		
		return view;
	}

}
