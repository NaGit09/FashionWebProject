package controller;


import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.List;
//Chức năng: Hiển thị trang chính của cửa hàng (home.jsp) với danh sách sản phẩm nổi bật.
////Xử lý: Lấy danh sách sản phẩm từ ProductDAO, thiết lập thuộc tính cho request và chuyển hướng đến home.jsp.

public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<Product> productList = productDAO.getAllProducts();

        if (productList == null || productList.isEmpty()) {
            System.out.println("No products found!");
        } else {
            System.out.println("Number of products: " + productList.size());
        }

        request.setAttribute("productList", productList);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

}
