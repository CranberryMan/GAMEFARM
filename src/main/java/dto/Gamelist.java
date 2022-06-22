package dto;
import java.io.Serializable;
public class Gamelist implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String name;
	private String img;
	private String desc;
	private String link;
	
	public Gamelist(String name, String img, String desc, String link) {
		this.name = name;
		this.img = img;
		this.desc = desc;
		this.link = link;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	
}