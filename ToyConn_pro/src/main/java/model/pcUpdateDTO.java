package model;

public class pcUpdateDTO {
	int p_num;
	String lender_id;
	public pcUpdateDTO(int p_num, String lender_id) {
		this.p_num = p_num;
		this.lender_id = lender_id;
	}
	public pcUpdateDTO() {

	}
	public int getP_num() {
		return p_num;
	}
	public String getLender_id() {
		return lender_id;
	}
	
	
}
