package handlers.recruit;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.CorpService;
import handlers.Handler;
import mem.MemService;
import recruit.recruitdetail.RecruitDetail;
import recruit.recruitdetail.RecruitDetailService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitDetailHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		if (request.getMethod().equals("GET")) {
			// detail
			String id = (String) request.getSession().getAttribute("loginId");
			MemService mservice = new MemService();
			String wantedAuthNo = request.getParameter("wantedAuthNo");

			CorpService cservice = new CorpService();
			RecruitListService rlservice = new RecruitListService();
			RecruitDetailService rdservice = new RecruitDetailService();

//			if(mservice.getMem(id).getType() == 1) {
//				view = "/index.jsp";
//			} else {
//				view = "/corp/info.jsp";
//			}

			String busi_no = rlservice.getByWantedAuthNo(wantedAuthNo).getBusiNo();
			String corpid = cservice.getByBusiNo(busi_no).getCorpid();
			String corp_nm = cservice.getByBusiNo(busi_no).getCorp_nm();
			String corp_addr = cservice.getByBusiNo(busi_no).getCorp_addr();
			RecruitList rl = rlservice.getByWantedAuthNo(wantedAuthNo);
			RecruitDetail rd = rdservice.getByWantedAuthNo(wantedAuthNo);

			request.setAttribute("wantedAuthNo", wantedAuthNo);
			request.setAttribute("corpid", corpid);
			request.setAttribute("corp_nm", corp_nm);
			request.setAttribute("corp_addr", corp_addr);
			request.setAttribute("busi_no", busi_no);
			request.setAttribute("rl", rl);
			request.setAttribute("rd", rd);

			String salTpCd = rl.getSalTpCd();
			switch (salTpCd) {
			case "H":
				salTpCd = "시급";
				break;
			case "D":
				salTpCd = "일급";
				break;
			case "M":
				salTpCd = "월급";
				break;
			case "Y":
				salTpCd = "연봉";
				break;
			default:
				salTpCd = "-";
				break;
			}

			String minEdubgIcd = rl.getMinEdubgIcd();
			switch (minEdubgIcd) {
			case "0":
			case "00":
				minEdubgIcd = "학력무관";
				break;
			case "01":
				minEdubgIcd = "초졸이하";
				break;
			case "02":
				minEdubgIcd = "중졸";
				break;
			case "3":
			case "03":
				minEdubgIcd = "고졸";
				break;
			case "4":
			case "04":
				minEdubgIcd = "대졸(2~3년)";
				break;
			case "5":
			case "05":
				minEdubgIcd = "대졸(4년)";
				break;
			case "6":
			case "06":
				minEdubgIcd = "석사";
				break;
			case "7":
			case "07":
				minEdubgIcd = "박사";
				break;
			default:
				minEdubgIcd = "학력무관";
				break;
			}

			String enterTpCd = rl.getEnterTpCd();
			switch (enterTpCd) {
			case "Z":
				enterTpCd = "관계없음";
				break;
			case "N":
				enterTpCd = "신입";
				break;
			case "E":
				enterTpCd = "경력";
				break;
			default:
				enterTpCd = "관계없음";
				break;
			}
			String saveStatusStr = null; 
			int saveStatus = rl.getSaveStatus();
			switch (saveStatus) {
			case 0:
				saveStatusStr = "임시 저장";
				break;
			case 1:
				saveStatusStr = "등록";
				break;
			}

			
			String listTypeStr = null;
			boolean listType = rl.isType();
			if(listType) {
				listTypeStr = "api공고";
			} else {
				listTypeStr = "사용자공고";				
			}
			
			String detailTypeStr = null;
			int detailType = rd.getType();
			System.out.println(rd);
			switch (detailType) {
			case 0:
				detailTypeStr = "마감";
				break;
			case 1:
				detailTypeStr = "진행";
				break;
			case 2:
				detailTypeStr = "삭제";
				break;
			default:
				detailTypeStr = "진행";
				break;
			}
			System.out.println(rl.getSal());
			request.setAttribute("salTpCd", salTpCd);
			request.setAttribute("minEdubgIcd", minEdubgIcd);
			request.setAttribute("enterTpCd", enterTpCd);			
			request.setAttribute("saveStatusStr", saveStatusStr);
			request.setAttribute("listTypeStr", listTypeStr);
			request.setAttribute("detailTypeStr", detailTypeStr);
			request.setAttribute("view", "/recruit/recruitdetail.jsp");

		} else {
			view = "redirect:/recruit/recruitmylist.jsp";
		}
		return view;
	}

}
