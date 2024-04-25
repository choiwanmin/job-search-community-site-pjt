package handlers.recruit;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import corp.Corp;
import corp.CorpService;
import handlers.Handler;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class IndexListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		RecruitListService rlservice = new RecruitListService();
		ArrayList<RecruitList> testlist =rlservice.getByRegDt();
		
		JSONArray arr = new JSONArray();
		String corp = "";
		String date = "";
		String title="";
		String authNo= "";
		String addr = "";
		
		
		//날짜 변환
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
               
		for(RecruitList r : testlist) {
			System.out.println(r);
			
			JSONObject obj = new JSONObject();
			CorpService cservice = new CorpService();
			Corp c = cservice.getByBusiNo(r.getBusiNo());
			corp = c.getCorp_nm();
			
			String dateStr[] = format.format(r.getCloseDt()).split("-");
			date = "마감(~"+dateStr[1]+"월"+dateStr[2]+"일)";

			String address[] =r.getWorkRegion().split(" ");
			addr = address[2]+" " +address[3];
			
			title=r.getWantedTitle();
			authNo = r.getWantedAuthNo();
			//회사정보
			obj.put("corp",corp);

			//공고 정보
			obj.put("title",title );
			obj.put("authNo", authNo);
			obj.put("addr", addr);
			obj.put("date", date);
			
			arr.add(obj);
		}
		
		String res = arr.toJSONString();
		return "responsebody/"+res;
	}

}
