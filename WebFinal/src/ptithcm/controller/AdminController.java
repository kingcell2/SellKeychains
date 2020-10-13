package ptithcm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.Bill_detail;
import ptithcm.entity.Product;
import ptithcm.entity.Product_type;
import ptithcm.entity.User;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;
/*	User userLogin = null;
	@ModelAttribute("userLogin") 
	public User userLogin(String uname, String psw) {	
		Session session = factory.openSession();
		Transaction transaction = null;
		System.out.print(uname+" "+psw);
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM User WHERE email= '"+uname+ "' and password= '" + psw + "'");
			query.setString("email", uname);
			query.setString("password", psw);
			User obj = (User) query.uniqueResult();
			transaction.commit();
			return obj;
		} catch (Exception ex) {
			if (transaction != null) {
				System.out.println(ex.toString());
				transaction.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}*/

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "admin/login";
	}
	
	//=============
	public User userLogin1(String uname, String psw) {	
		Session session = factory.openSession();
		Transaction transaction = null;
		System.out.print(uname+" "+psw+"=======================");
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM User WHERE email LIKE :emailin and password LIKE :passwordin");
			query.setString("emailin", uname);
			query.setString("passwordin", psw);
			User obj = (User) query.uniqueResult();
			transaction.commit();
			return obj;
		} catch (Exception ex) {
			if (transaction != null) {
				System.out.println(ex.toString());
				transaction.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}
	/*@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model,
			HttpSession session1,
			@PathParam("uname") String uname, 
			@PathParam("psw") String psw) {
		System.out.println(uname + " - " + psw);
		User checkUser = userLogin1(uname, psw);
		System.out.print(checkUser);
		if(checkUser==null)
		{
			return "admin/login";
		}
		session1.setAttribute("user1", checkUser);
		return "redirect:/user/index.htm";
		
	}*/
	//=============

	User user = new User();

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model,
			HttpSession session1,
			@PathParam("uname") String uname, 
			@PathParam("psw") String psw) {
		//User userLogin;
		Session session = factory.getCurrentSession();
		System.out.println(uname + " - " + psw);
	User checkUser = userLogin1(uname, psw);
	System.out.print(checkUser);
		String hql = "FROM User where email= '" + uname + "' and password= '" + psw + "'";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		
		if (list.size() > 0) {
			user = list.get(0);
			//tempUser = Signin(user.getEmail(),user.getPassword());

			if(user.getRole()>=1 && user.getRole()<=99) {
				if(user.getActive()==1 && user.getRole()==1) {
					
				//	userLogin = tempUser;
					model.addAttribute("user",user.getName());

					return "redirect:admin_index.htm";
				}
				else if(user.getActive()==0) {
					model.addAttribute("message", "Tài khoản đang bị khóa");
					return "admin/login";
				}
				else {
					model.addAttribute("user",user.getName());
						return "redirect:colla_index.htm";
					}
				
			}
			else if (user.getRole()>=100 ){
				if(user.getActive()==1) {
					//userLogin = tempUser;
					model.addAttribute("user",user.getName());
					
					session1.setAttribute("user1", checkUser);
					return "redirect:/user/index.htm";
				}
				else {
					model.addAttribute("message","Tài khoản đang bị khóa");
				}
			
			
			}
			
		}
		model.addAttribute("user",user);
		model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng ! Vui lòng kiểm tra lại");
		return "admin/login";
	}

//@RequestMapping(value = "login", method = RequestMethod.POST)
//	public String login(ModelMap model, @ModelAttribute("user") User user1) {
//		User tempUser;
//	 
//			System.out.println(user1.getEmail() + " - " + user1.getPassword());
//			tempUser = Signin(user1.getEmail(), user1.getPassword());
//			if (tempUser == null) {
//				model.addAttribute("user1", new User());
//				model.addAttribute("message", "Tên tài khoản hoặc mật khẩu không chính xác !");
//				// model.addAttribute("result", false);
//				return "admin/login";
//			} else {
//				if (tempUser.getActive()  ==  0) {
//					model.addAttribute("user1", new User());
//					model.addAttribute("message", "Tài khoản đã bị khoá vui lòng liên hệ với admin !");
//					// model.addAttribute("result", false);
//					return "admin/login";
//				} else {
//					if (tempUser.getRole() == 1) {
//						
//						userLogin = tempUser;
//						return "redirect:admin_index.htm";
//					} else {
//						userLogin = tempUser;
//					}
//					// model.addAttribute("result", true);
//				}
//			}
//			return "admin/admin_index";
//		}
	@RequestMapping("product")
	public String product(ModelMap model) {
		/*if (user.getName() == null) {
			return "redirect:login.htm";
		}*/
		List<Product> items = getProducts();
		model.addAttribute("items", items);
		model.addAttribute("user", user);
		return "admin/product";

	}
	@RequestMapping("colla_product")
	public String product1(ModelMap model) {
		/*if (user.getName() == null) {
			return "redirect:login.htm";
		}*/
		List<Product> items = getProducts();
		model.addAttribute("items", items);
		model.addAttribute("user", user);
		return "admin/colla_product";

	}
	
	@RequestMapping("user")
	public String user(ModelMap model) {
		String cond = "role!=1";
		List<User> items1 = getUsers(cond);
		model.addAttribute("items1", items1);
		model.addAttribute("user", user);
		
		return "admin/user";
	}
	@SuppressWarnings("unchecked")
	public List<User> getUsers(@PathParam("cond") String cond) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User Where "+ cond;
		Query query = session.createQuery(hql);
		
		List<User> list = query.list();
		return list;
	}
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("product", new Product());
				return "admin/insert";
		
	}
	@Autowired
	ServletContext context;
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(HttpServletRequest req,ModelMap model, 
			@RequestParam("name") String name,
			@RequestParam("id_type") Integer id_type, 
			@RequestParam("price") Float price, 
			@RequestParam("description") String description,
			@RequestParam("discount") Float discount,
			@RequestParam("photo") MultipartFile photo)
			{
			Product product = new Product();
			try {
				Session session = factory.getCurrentSession();		
				Product_type product_type = (Product_type) session.get(Product_type.class, id_type);		
				context = req.getSession().getServletContext();
				String photoPath = "E:\\Eclipse - BT\\DoAn\\WebFinal\\WebContent\\images\\products\\" + photo.getOriginalFilename();
				photo.transferTo(new File(photoPath));					
				
				product.setName(name);			
				product.setDescription(description);
				product.setPrice(price);
				product.setDiscount(discount);
				product.setLink(photo.getOriginalFilename());
				product.setProduct_type(product_type);
				
				
			} catch (Exception e) {
				
				model.addAttribute("message", "Lỗi lưu file !");
				return "admin/insert";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(product);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công !");
				return "redirect:product.htm"; 
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Thêm mới thất bại !");
			} finally {
				session.close();
			}
		
		return "admin/insert";
	}
	
			
		
	
	Product product = new Product();
	@RequestMapping("edit/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {

		Session session = factory.getCurrentSession();
		 product = (Product) session.get(Product.class, id);

		model.addAttribute("product", product);
		
		return "admin/edit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(HttpServletRequest req,ModelMap model, @RequestParam("name") String name,@RequestParam("id_type") Integer id_type, @RequestParam("price") Float price, @RequestParam("description") String description,@RequestParam("discount") Float discount,@RequestParam("photo") MultipartFile photo) {
		try {
			Session session = factory.getCurrentSession();		
			Product_type product_type = (Product_type) session.get(Product_type.class, id_type);	
			context = req.getSession().getServletContext();
			String photoPath = "E:\\Eclipse - BT\\DoAn\\WebFinal\\WebContent\\images\\products\\" + photo.getOriginalFilename();
			photo.transferTo(new File(photoPath));
			
			product.setLink(photo.getOriginalFilename());
			product.setName(name);			
			product.setDescription(description);
			product.setPrice(price);
			product.setDiscount(discount);			
			product.setProduct_type(product_type);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(product);
			t.commit();
			return "redirect:product.htm"; 
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại !");
		} finally {
			session.close();
		}
		return "admin/edit";
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		return list;
	}

	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Product product = (Product) session.get(Product.class, id);
			session.delete(product);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại !");
		}
		model.addAttribute("items", getProducts());

		return "admin/product";
	}
	@RequestMapping(value = "insertaccount", method = RequestMethod.GET)
	public String insertaccount(ModelMap model) {
		
		model.addAttribute("user", new User());
		return "admin/insertaccount";
		
	}
	public User checkUserName(String uname) {
		Session session = factory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM User WHERE email = :uname");
			query.setString("uname", uname);
			User obj = (User) query.uniqueResult();
			transaction.commit();
			return obj;
		} catch (Exception ex) {
			if (transaction != null) {
				System.out.println(ex.toString());
				transaction.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}
	@Autowired
	ServletContext context1;
	@RequestMapping(value = "insertaccount", method = RequestMethod.POST)
	public String insert(HttpServletRequest req,
			ModelMap model, 
			@RequestParam("email") String email,
			@RequestParam("password") String password, 
			@RequestParam("name") String name, 
			@RequestParam("active") Integer active,
			@RequestParam("role") Integer role,
			@RequestParam("address") String address)
				{
		Session session = factory.getCurrentSession();
		User user= new User();
		User checkName =  checkUserName(email);
		if(checkName  !=  null) {
			model.addAttribute("msg","Tên đăng nhập đã tồn tại!");
			return "admin/insertaccount";
		}
		else {
		try {
			session = factory.getCurrentSession();
			User users = (User) session.get(User.class, active);
			context1 = req.getSession().getServletContext();
			user.setEmail(email);
			user.setPassword(password);
			user.setName(name);
			user.setActive(active);
			user.setRole(role);
			user.setAddress(address);
			
			
		}
		catch(Exception e) {
			model.addAttribute("message","Error!");
			return "admin/insertaccount";
		}
		}
		 session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
			return "redirect:user.htm";
		}catch(Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");			
		}finally {
			session.close();
		}
		 return "admin/insertaccount";
	}
	
	User users = new User();
	@RequestMapping("editaccount/{id}")
	public String editaccount(ModelMap model, @PathVariable("id") Integer id) {

		Session session = factory.getCurrentSession();
		 user = (User) session.get(User.class, id);

		model.addAttribute("users", user);
		
		return "admin/editaccount";
	}
	@RequestMapping(value = "editaccount", method = RequestMethod.POST)
	public String editaccount(HttpServletRequest req,
			ModelMap model,
			@RequestParam("email") String email,
			@RequestParam("password") String password, 
			@RequestParam("name") String name, 
			@RequestParam("active") Integer active,
			@RequestParam("role") Integer role,
			@RequestParam("address") String address) {
		try {
			Session session = factory.getCurrentSession();	
			User users = (User) session.get(User.class, active);
			context1 = req.getSession().getServletContext();
			user.setEmail(email);
			user.setPassword(password);
			user.setName(name);
			user.setActive(active);
			user.setRole(role);
			user.setAddress(address);
		}catch(Exception e) {
			model.addAttribute("message","Error!");
			return "admin/editaccount";
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(user);
			t.commit();
			return "redirect:user.htm"; 
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại !");
		} finally {
			session.close();
		}
		return "admin/editaccount";
	}
	
	@RequestMapping("deleteaccount/{id}")
	public String deleteaccount(ModelMap model, @PathVariable("id") Integer id) {
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, id);
			session.delete(user);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại !");
		}
		model.addAttribute("users", user);

		return "admin/user";
	}
	@RequestMapping("colla_cart")
	public String colla_cart(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill_detail";
		Query query = session.createQuery(hql);
		List<Bill_detail> list = query.list();
		model.addAttribute("user", user);
		model.addAttribute("items",list);
		return "admin/colla_cart";
	}
	@RequestMapping("admin_cart")
	public String admin_cart(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill_detail";
		Query query = session.createQuery(hql);
		List<Bill_detail> list = query.list();
		model.addAttribute("user", user);
		model.addAttribute("items",list);
		return "admin/admin_cart";
	}
	@RequestMapping("admin_index")
	public String admin_index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listMoHinh = new ArrayList<Product>();
		List<Product> listMocKhoa = new ArrayList<Product>();

		for (Product product : list) {
			if(product.getProduct_type().getId()==1) {
				listMocKhoa.add(product);
			}
			if(product.getProduct_type().getId()==2) {
				listMoHinh.add(product);
			}
		}
		
			model.addAttribute("listMoHinh",listMoHinh);
			model.addAttribute("listMocKhoa",listMocKhoa);
			model.addAttribute("user", user);	
			
			return "admin/admin_index";
		}
	@RequestMapping("colla_index")
	public String colla_index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listMoHinh = new ArrayList<Product>();
		List<Product> listMocKhoa = new ArrayList<Product>();
		
		
		for (Product product : list) {
			if(product.getProduct_type().getId()==1) {
				listMocKhoa.add(product);
			}
			if(product.getProduct_type().getId()==2) {
				listMoHinh.add(product);
			}
		}
			model.addAttribute("listMoHinh",listMoHinh);
			model.addAttribute("listMocKhoa",listMocKhoa);
			model.addAttribute("user",user);			
			return "admin/colla_index";
		}
	@RequestMapping("admin_product")
	public String admin_product(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		model.addAttribute("user",user);		
		model.addAttribute("list",list);
		return "admin/admin_product";
	}
	@RequestMapping("product/{type}")
	public String type(ModelMap model, @PathVariable("type") Integer type) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product where product_type.id = "+type;		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
	
		model.addAttribute("user",user);
		model.addAttribute("list",list);
		
		return "admin/admin_product";	
	
	}
	
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String list(ModelMap model, @ModelAttribute("s") String s) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listNew = new ArrayList<Product>();
		for (Product product : list) {
			if(product.getName().toLowerCase().contains(s.toLowerCase())) {
				listNew.add(product);
			}
		}
		
		model.addAttribute("user",user);
		model.addAttribute("list",listNew);
		return "admin/admin_product";
	}
		
	@RequestMapping("colla_product1")
	public String colla_product1(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		model.addAttribute("user",user);		
		
		model.addAttribute("list",list);
		
		return "admin/colla_product1";
	}
	@RequestMapping("products/{type}")
	public String type2(ModelMap model, @PathVariable("type") Integer type) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product where product_type.id = "+type;		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		model.addAttribute("user",user);		
		model.addAttribute("list",list);
		return "admin/colla_product1";	
	
	}
	
	
	@RequestMapping(value = "search2", method = RequestMethod.GET)
	public String list2(ModelMap model, @ModelAttribute("s") String s) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listNew = new ArrayList<Product>();
		for (Product product : list) {
			if(product.getName().toLowerCase().contains(s.toLowerCase())) {
				listNew.add(product);
			}
		}
		
		model.addAttribute("user",user);		
		
		model.addAttribute("list",listNew);
		return "admin/colla_product1";
	}
	


}
