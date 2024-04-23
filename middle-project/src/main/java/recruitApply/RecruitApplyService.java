package recruitApply;

import java.util.ArrayList;

public class RecruitApplyService {
	private RecruitApplyDao dao;
	public RecruitApplyService() {
		dao = new RecruitApplyDao();
	}
	
	//개인 회원의 공고 지원 추가
	public void addApply(RecruitApply r) {
		dao.insert(r);
	}
	//개인 회원이 지원한 리스트
	public ArrayList<RecruitApply> getUserList(String applycant_num){
		return dao.selectByUser(applycant_num);
	}
	//지원 VO 1개 반환(지원자 번호와 공고 번호)
	public RecruitApply getApply (int num,String wanted_auth_no) {
		return dao.select(num, wanted_auth_no);
	}
	//회사별 지원자 리스트 반환
	public ArrayList<RecruitApply> getCorpList(String busi_no){
		return dao.SelectByCorp(busi_no);
	}
	//회사가 공고별로 지원자 리스트 받아오기
	public ArrayList<RecruitApply> getauthNo(String wanted_auth_no){
		return dao.SelectByauthNo(wanted_auth_no);
	}
	//지원 취소
	public void delApply(int num,String wanted_auth_no) {
		dao.delete(num, wanted_auth_no);
	}
	
}
