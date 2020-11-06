package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.OrderDetailsDao;
import com.dao.OrdersDao;
import com.dao.ProductDao;
import com.dao.UserDao;
import com.dto.Product;
import com.dto.User;

@WebServlet("/AjioServlet")
public class AjioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String btValue = request.getParameter("bt");
		HttpSession se = request.getSession();
		response.setContentType("text/html");

		// If no action is been selected by user
		if (btValue == null) {
			try {
				List<String> pList = ProductDao.getAllCategories();
				se.setAttribute("pList", pList);
				List<Product> pdList = ProductDao.getAllItems();
				se.setAttribute("pdList", pdList);
				request.getRequestDispatcher("login.jsp").forward(request, response);
				request.getRequestDispatcher("loginhome.jsp").forward(request, response);

			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String btValue = request.getParameter("bt");
		PrintWriter out = response.getWriter();
		HttpSession se = request.getSession();
		response.setContentType("text/html");

		// when user click Register button in login.jsp
		if (btValue.equals("Register")) {
			response.setContentType("text/html");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");

			try {

				// checking if user already exists or not
				boolean checkAdmin = UserDao.checkUserExistsOrNot(email);
				if (checkAdmin) {
					out.println("<head><script>alert('Account already exists.')</script></head>");
					request.getRequestDispatcher("login.jsp").include(request, response);
				} else {

					// if not present inserting record in user table
					User u = new User(name, email, pwd);
					boolean b = UserDao.insertRecords(u);
					if (b) {
						// displaying message for successful registration
						request.getRequestDispatcher("register.jsp").include(request, response);
					} else {
						out.print("Some issue occurred!");
					}
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

		}
		// when user clicks Login button in login.jsp
		else if (btValue.equals("LogIn")) {

			// fetching details entered in the modal by the user
			String enteredEmail = request.getParameter("email1");
			String enteredPwd = request.getParameter("pwd1");

			try {
				User u = UserDao.getUserWithEmail(enteredEmail);

				// Checking if details are correct
				if (enteredPwd.equals(u.getPassword())) {
					// sending user_name for displaying in other pages
					se.setAttribute("uObj", u);
					request.getRequestDispatcher("loginhome.jsp").forward(request, response);
				} else {
					out.println("<head><script>alert('Invalid Credentials!"
							+ " Please Check Your details again.')</script></head>");
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		// displaying products according to the selected category in login.jsp
		else if (btValue.equals("Go")) {
			String category = request.getParameter("category");
			try {
				List<Product> pdList = ProductDao.getProductsWithCategory(category);
				request.setAttribute("pdList", pdList);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		// displaying products according to the selected category in
		// loginhome.jsp
		else if (btValue.equals("GO")) {
			String category = request.getParameter("ct");
			try {
				List<Product> pdList = ProductDao.getProductsWithCategory(category);
				request.setAttribute("pdList", pdList);
				request.getRequestDispatcher("loginhome.jsp").forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		// adding products to the cart
		else if (btValue.equals("AddToCart")) {
			Map<Product, Integer> selectedProdList;
			int totalPrice = 0;

			if (se.getAttribute("selectedProdList") == null) {
				String[] quantities = request.getParameterValues("quantity");
				String[] ids = request.getParameterValues("productId");
				selectedProdList = new HashMap<Product, Integer>();
				// Iterating two arrays in a single loop
				for (int i = 0; i < quantities.length && i < ids.length; i++) {
					if (Integer.parseInt(quantities[i]) > 0) {
						try {
							Product prod = ProductDao.getProductWithId(Integer.parseInt(ids[i])); // key
							int quantity = Integer.parseInt(quantities[i]); // value
							totalPrice += quantity * prod.getPrice();
							selectedProdList.put(prod, quantity);
						} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
							e.printStackTrace();
						}
					}
				}

			} else {
				String[] quantities = request.getParameterValues("quantity");
				String[] ids = request.getParameterValues("productId");
				selectedProdList = (Map<Product, Integer>) se.getAttribute("selectedProdList");
				totalPrice = (int) se.getAttribute("totalPrice");
				// Iterating two arrays in a single loop
				for (int i = 0; i < quantities.length && i < ids.length; i++) {
					if (Integer.parseInt(quantities[i]) > 0) {
						try {
							Product prod = ProductDao.getProductWithId(Integer.parseInt(ids[i])); // key
							int quantity = Integer.parseInt(quantities[i]); // value
							selectedProdList.put(prod, quantity);
							totalPrice += quantity * prod.getPrice();
						} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
							e.printStackTrace();
						}
					}
				}

			}

			se.setAttribute("selectedProdList", selectedProdList);
			se.setAttribute("totalPrice", totalPrice);
			request.getRequestDispatcher("cart.jsp").forward(request, response);

		} else if (btValue.equals("Continue")) {
			// Bill generation(insertion into orders)
			int uId = ((User) se.getAttribute("uObj")).getId();
			int tAmount = (int) se.getAttribute("totalPrice");
			Date d = new Date(); // date time
			// java.sql.Date only date
			Timestamp t = new Timestamp(d.getTime()); // conversion of util date
														// to time stamp
			try {
				boolean res = OrdersDao.generateOrder(uId, tAmount, t);
				int sCount = 0;
				if (res) {
					// inserting purchased product into order_details
					int orderId = OrdersDao.getOrderId(uId, t);
					Map<Product, Integer> siList = (Map<Product, Integer>) se.getAttribute("selectedProdList");
					for (Map.Entry<Product, Integer> map : siList.entrySet()) {
						int itemId = map.getKey().getId();
						int quantity = map.getValue();
						boolean r = OrderDetailsDao.insertPurchasedProduct(orderId, itemId, quantity);
						if (r) {
							sCount++;
						}
					}
					if (sCount == siList.size()) {
						request.getRequestDispatcher("final.jsp").forward(request, response);
					} else {
						out.println("not Inserted");
					}
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
