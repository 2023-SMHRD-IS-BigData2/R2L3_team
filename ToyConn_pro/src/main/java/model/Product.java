package model;

public class Product {
	private int p_num;
	 private String category;
	 private String p_name;
	 private int rent_price;
	 private String p_quality;
	private String p_content;
	String p_status = "대여가능";
	String r_status = "대야가능";
	private String gender;
	private String image_file;
	public Product(int p_num, String category, String p_name, int rent_price, String p_quality, String p_content,
			String p_status, String r_status, String gender, String image_file) {
		super();
		this.p_num = p_num;
		this.category = category;
		this.p_name = p_name;
		this.rent_price = rent_price;
		this.p_quality = p_quality;
		this.p_content = p_content;
		this.p_status = p_status;
		this.r_status = r_status;
		this.gender = gender;
		this.image_file = image_file;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getRent_price() {
		return rent_price;
	}
	public void setRent_price(int rent_price) {
		this.rent_price = rent_price;
	}
	public String getP_quality() {
		return p_quality;
	}
	public void setP_quality(String p_quality) {
		this.p_quality = p_quality;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getR_status() {
		return r_status;
	}
	public void setR_status(String r_status) {
		this.r_status = r_status;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getImage_file() {
		return image_file;
	}
	public void setImage_file(String image_file) {
		this.image_file = image_file;
	}
	
}
