package model;

public class Product {

	 private String p_content;
	 private String p_name;
	 private String rent_price;
	private String image_file;
	public Product( String p_name, String rent_price, String p_content, String image_file) {
		
	
		this.p_name = p_name;
		this.rent_price = rent_price;
		
		this.p_content = p_content;
	
		this.image_file = image_file;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getRent_price() {
		return rent_price;
	}
	public void setRent_price(String rent_price) {
		this.rent_price = rent_price;
	}
	public String getImage_file() {
		return image_file;
	}
	public void setImage_file(String image_file) {
		this.image_file = image_file;
	}
	
	
}
