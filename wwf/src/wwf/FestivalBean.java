package wwf;

public class FestivalBean {
	private int id;
	private String name;
	private String date;
	private int term;
	private String exc;
	private int price;
	private String ent_url;
	private String des_url;
	private int place_id;

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public String getExc() {
		return exc;
	}
	public void setExc(String exc) {
		this.exc = exc;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEnt_url() {
		return ent_url;
	}
	public void setEnt_url(String ent_url) {
		this.ent_url = ent_url;
	}
	public String getDes_url() {
		return des_url;
	}
	public void setDes_url(String des_url) {
		this.des_url = des_url;
	}
	public int getPlace_id() {
		return place_id;
	}
	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}

}