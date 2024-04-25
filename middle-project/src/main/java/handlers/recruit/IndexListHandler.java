package handlers.recruit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class IndexListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		RecruitListService rlservice = new RecruitListService();
		ArrayList<RecruitList> testlist =rlservice.getByRegDt();
		System.out.println("-------------12개 테스트------------------");
		for(RecruitList r : testlist) {
			System.out.println(r);
		}
		
		return null;
	}

}
