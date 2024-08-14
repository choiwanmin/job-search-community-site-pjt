package recruit.recruitdetail;

import recruit.recruitlist.RecruitListService;

public class RecruitDetailService {
	private RecruitDetailDao rddao;

	public RecruitDetailService() {
		rddao = new RecruitDetailDao();
	}

	public void addApiRecruitDetail(RecruitDetail rd) {
		rddao.insertApi(rd);
	}

	public void addNewRecruitDetail(RecruitDetail rd) {
		rddao.insertNew(rd, RecruitListService.num);
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
