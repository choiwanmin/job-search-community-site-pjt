package handlers.offer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;

public class OfferHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//기업 제안 핸들러
		//(개인 회원의 id를 받아와서, 회원에게 공고 번호로 제안을 보내면 확인할 수 있게 하기
		//>개인 회원의 id 받기(유저 selectDao)>핸들러에서 디자인하기. 
		//>공고 번호로 제안하기(offer insert로 추가하기(기본 accept는 0)/공고가 여러개 있을 수 있으므로 ArrayList에 공고 리스트를 담아오기/공고가 없으면 제안 불가능)(회원 번호로 arrayList dao)
		
		//유저num
		String userid = (String)request.getAttribute("userid");

		//제안 회사 및 공고 정보
		String wanted_auth_no = (String)request.getAttribute("wanted_auth_no");
		
		String corpid = (String)request.getSession().getAttribute("loginId");
		//CorpService service = new CorpService();
		
		//넘버 받아오기 int corpNum = service.get~~~
		
		
	
		
		
		
		return null;
	}

}
