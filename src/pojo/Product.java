package pojo;

public class Product {
	int productId;
	String productName;
	String productCategory;
	int productPrice;
	
	public Product() {
		
	}
	
	public Product(int productId, String productName, int productPrice, String productCategory){
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productCategory = productCategory;
	}
	
	public int getProductId() {
		return productId;
	}
	
	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int price) {
		this.productPrice = price;
	}
	
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ""
				+ ", productPrice=" + productPrice + ", productCategory=" + productCategory + "]";
	}

}
