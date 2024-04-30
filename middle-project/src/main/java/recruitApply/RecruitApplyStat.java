package recruitApply;

public class RecruitApplyStat {
	private String row;
	private int count;
	
	public RecruitApplyStat() {}
	public RecruitApplyStat(String row, int count) {
		super();
		this.row = row;
		this.count = count;
	}
	
	public String getRow() {
		return row;
	}
	public void setRow(String row) {
		this.row = row;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "RecruitApplyStat [row=" + row + ", count=" + count + "]";
	}
	
	
	
}
