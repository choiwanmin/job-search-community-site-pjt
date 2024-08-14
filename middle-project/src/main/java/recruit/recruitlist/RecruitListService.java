package recruit.recruitlist;

import java.util.ArrayList;

public class RecruitListService {
	private RecruitListDao dao;
	public static int num;

	public RecruitListService() {
		dao = new RecruitListDao();
	}

	public void addApiRecruitList(RecruitList rl) {
		dao.insertApi(rl);
	}

	public int addSeq() {
		num = dao.insertSeq();
		return num;
	}

	public void addNewRecruitList(RecruitList rl) {
		dao.insertNew(rl, addSeq());
	}

	public void editRecruitList(RecruitList rl) {
		dao.update(rl);
	}

	public void delRecruitList(String busiNo, String wantedString) {
		dao.delete(busiNo, wantedString);
	}

	public RecruitList getByWantedAuthNo(String busiNo, String wantedAuthNo) {
		return dao.selectByWantedAuthNo(busiNo, wantedAuthNo);
	}

	public RecruitList getByWantedAuthNo(String wantedAuthNo) {
		return dao.selectByWantedAuthNo(wantedAuthNo);
	}

	public ArrayList<RecruitList> getByBusiNo(String busiNo) {
		return dao.selectByBusiNo(busiNo);
	}

	public ArrayList<RecruitList> getAll(int saveStatus) {
		return dao.selectAll(saveStatus);
	}
	
	public ArrayList<RecruitList> getByRegDt() {
		return dao.selectByRegDt();
	}
}