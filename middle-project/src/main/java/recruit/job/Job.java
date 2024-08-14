package recruit.job;

public class Job {
	private String depth1Cd;
	private String depth1Nm;
	private String depth2Cd;
	private String depth2Nm;
	private String depth3Cd;
	private String depth3Nm;

	public Job() {

	}

	public Job(String depth1Cd, String depth1Nm, String depth2Cd, String depth2Nm, String depth3Cd, String depth3Nm) {
		super();
		this.depth1Cd = depth1Cd;
		this.depth1Nm = depth1Nm;
		this.depth2Cd = depth2Cd;
		this.depth2Nm = depth2Nm;
		this.depth3Cd = depth3Cd;
		this.depth3Nm = depth3Nm;
	}

	@Override
	public String toString() {
		return "Job [depth1Cd=" + depth1Cd + ", depth1Nm=" + depth1Nm + ", depth2Cd=" + depth2Cd + ", depth2Nm="
				+ depth2Nm + ", depth3Cd=" + depth3Cd + ", depth3Nm=" + depth3Nm + "]";
	}

	public String getDepth1Cd() {
		return depth1Cd;
	}

	public void setDepth1Cd(String depth1Cd) {
		this.depth1Cd = depth1Cd;
	}

	public String getDepth1Nm() {
		return depth1Nm;
	}

	public void setDepth1Nm(String depth1Nm) {
		this.depth1Nm = depth1Nm;
	}

	public String getDepth2Cd() {
		return depth2Cd;
	}

	public void setDepth2Cd(String depth2Cd) {
		this.depth2Cd = depth2Cd;
	}

	public String getDepth2Nm() {
		return depth2Nm;
	}

	public void setDepth2Nm(String depth2Nm) {
		this.depth2Nm = depth2Nm;
	}

	public String getDepth3Cd() {
		return depth3Cd;
	}

	public void setDepth3Cd(String depth3Cd) {
		this.depth3Cd = depth3Cd;
	}

	public String getDepth3Nm() {
		return depth3Nm;
	}

	public void setDepth3Nm(String depth3Nm) {
		this.depth3Nm = depth3Nm;
	}

}
