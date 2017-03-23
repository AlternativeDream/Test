package System.Ware;

/**
 * @TypeName：Ware
 * @description：商品信息实体
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class Ware {
	private Integer wareId;
	private String wareName;
	private String warePrice;
	private String description;
	private String wareKind;
	private String warekey;
	private String wareimg;
	private int status = 1;
	
	public Ware(){}
	
	public Ware(Integer wareId) {
		this.wareId = wareId;
	}

	public Ware(Integer wareId, String wareName, String warePrice, String description, String wareKind, String warekey,
			String wareimg,int status) {
		super();
		this.wareId = wareId;
		this.wareName = wareName;
		this.warePrice = warePrice;
		this.description = description;
		this.wareKind = wareKind;
		this.warekey = warekey;
		this.wareimg = wareimg;
		this.status = status;
	}

	public Integer getWareId() {
		return wareId;
	}

	public void setWareId(Integer wareId) {
		this.wareId = wareId;
	}

	public String getWareName() {
		return wareName;
	}

	public void setWareName(String wareName) {
		this.wareName = wareName;
	}

	public String getWarePrice() {
		return warePrice;
	}

	public void setWarePrice(String warePrice) {
		this.warePrice = warePrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getWareKind() {
		return wareKind;
	}

	public void setWareKind(String wareKind) {
		this.wareKind = wareKind;
	}
	
	public String getWarekey() {
		return warekey;
	}

	public void setWarekey(String warekey) {
		this.warekey = warekey;
	}
	
	public String getWareimg() {
		return wareimg;
	}

	public void setWareimg(String wareimg) {
		this.wareimg = wareimg;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Ware [wareId=" + wareId + ", wareName=" + wareName + ", warePrice=" + warePrice + ", description="
				+ description + ", wareKind=" + wareKind + ", warekey=" + warekey + ", wareimg=" + wareimg + ", status="
				+ status + "]";
	}	
	
}
