package recruit.recruitdetail;

import recruit.recruitlist.RecruitListDao;

public class RecruitDetailService {
	private RecruitListDao rldao;
	private RecruitDetailDao rddao;

	public RecruitDetailService() {
		rldao = new RecruitListDao();
		rddao = new RecruitDetailDao();
	}

	public void addApiRecruitDetail(RecruitDetail rd) {
		rddao.insertApi(rd);
	}
	
	public int[] addSeq() {
		return rldao.insertSeq();
	}
	
	public void addNewRecruitDetail(RecruitDetail rd) {
		rddao.insertNew(rd, addSeq()[1]);
	}

	public RecruitDetail getByWantedAuthNo(String wantedAuthNo) {
		return rddao.selectByWantedAuthNo(wantedAuthNo);
	}
	
	public void editRecruitDetail(RecruitDetail rd) {
		rddao.update(rd);
	}
	
	public void delRecruitDetail(String wantedString) {
		rddao.delete(wantedString);
	}
}
