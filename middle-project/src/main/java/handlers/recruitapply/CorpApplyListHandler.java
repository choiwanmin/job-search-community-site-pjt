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
import recruitApply.RecruitApplyStat;

public class CorpApplyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//String view = "/index.jsp";
		String wanted_auth_no = (String)request.getParameter("wanted_auth_no");
		RecruitApplyService reservice = new RecruitApplyService();
		ArrayList<RecruitApply> list = reservice.getauthNo(wanted_auth_no);
		PersonService pservice = new PersonService();
		String edu = "";
		String career = "";
		JSONObject totalObj = new JSONObject();
		
		JSONArray arr = new JSONArray();
		for(RecruitApply r: list) {
			Person p = pservice.getByNum(r.getApplycant_num());
			JSONObject obj = new JSONObject();

			obj.put("id", p.getUserid());
			obj.put("email", p.getEmail());
			obj.put("num", p.getNum());
			switch(Integer.parseInt(p.getEducation())) {
			case 0: edu="학력무관";
				 break;
			case 3: edu="고졸";
			 break;
			case 4: edu="전문학사(2년제)";
			 break;
			case 5: edu="학사(4년제)";
			 break;
			case 6: edu="석사";
			 break;
			case 7: edu="박사";
			 break;
			}
			obj.put("education", edu);
			switch(p.getCareer()) {
			case "N": career="신입";
				 break;
			case "E": career="경력";
			 break;
			}
			obj.put("career", career);
			obj.put("age", p.getAge());
			arr.add(obj);
		}
			totalObj.put("apply", arr);
		
		//통계용
		//성별
		JSONArray arr2 = new JSONArray();
		ArrayList<RecruitApplyStat> gender = reservice.getStat("gender", wanted_auth_no);
		for(RecruitApplyStat g: gender) {
			JSONObject obj = new JSONObject();
			String gen = "" ;
			switch(Integer.parseInt(g.getRow())) {
			case 1: gen="m";//남성
				break;
			case 2: gen="f";//여성
				break;
			}
			obj.put(gen, g.getCount());
			arr2.add(obj);
		}
		//학력
		ArrayList<RecruitApplyStat> education = reservice.getStat("education", wanted_auth_no);
		for(RecruitApplyStat e: education) {
			JSONObject obj = new JSONObject();
			String eduSt = "" ;
			obj.put(e.getRow(), e.getCount());
			arr2.add(obj);
		}	
		totalObj.put("total", arr2);
		String res = totalObj.toJSONString();
		return "responsebody/"+res;
	}

}
