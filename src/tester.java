import java.util.List;
import dao.ProductManager;
import pojo.Product;

public class tester {

	public static void main(String[] args) {
		
		String productId = "9";
		
		Product p = dao.ProductManager.getProductById(productId);
		List<Product> productNames = ProductManager.getProductByName(productId);
		
		
		if(p != null) {System.out.println("null");}
		else if(!productNames.isEmpty()) {System.out.println("null");}else {System.out.println("c");}
		
	}
}
