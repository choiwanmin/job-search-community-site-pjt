package handlers.offer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;

public class OfferCheckHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//유저가 제안 확인하기
		String userid = (String)request.getSession().getAttribute("loginId");
		Person p = new Person();
		//int usernum = p
		
		//post=유저가 제안 응답하기
		return null;
	}

}
