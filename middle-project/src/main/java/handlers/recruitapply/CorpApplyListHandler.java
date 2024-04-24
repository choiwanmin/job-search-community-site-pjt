package handlers.recruitapply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import handlers.Handler;
import person.Person;
import person.PersonService;
import recruitApply.RecruitApply;
import recruitApply.RecruitApplyService;

public class CorpApplyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//String view = "/index.jsp";
		String wanted_auth_no = (String)request.getParameter("wanted_auth_no");
		
		System.out.println("wanted_auth_no: "+wanted_auth_no);
		RecruitApplyService reservice = new RecruitApplyService();
		ArrayList<RecruitApply> list = reservice.getauthNo(wanted_auth_no);
		JSONArray arr = new JSONArray();
		PersonService pservice = new PersonService();
		for(RecruitApply r: list) {
			Person p = pservice.getByNum(r.getApplycant_num());
			JSONObject obj = new JSONObject();
			obj.put("name", p.getJobNm());
			arr.add(obj);
		}
		
		String res = arr.toJSONString();
		return "responsebody/"+res;
	}

}
