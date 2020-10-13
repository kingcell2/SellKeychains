package ptithcm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
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
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Bill;
import ptithcm.entity.Bill_detail;
import ptithcm.entity.Product;
import ptithcm.entity.User;


@Transactional
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "admin/login";
	}
	User user = new User();

	@RequestMapping("index")
		
	public String index(ModelMap model,HttpSession session1) {
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
	
	session1.setAttribute("user", user);
	model.addAttribute("listMoHinh",listMoHinh);
	model.addAttribute("listMocKhoa",listMocKhoa);	
	return "user/index";
}
	
	@RequestMapping("product")
	public String product(ModelMap model,HttpSession session1) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		session1.setAttribute("user", user);
		model.addAttribute("list",list);
		
		return "user/product";
	}
	@RequestMapping("product/{type}")
	public String edit(ModelMap model, @PathVariable("type") Integer type) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product where product_type.id = "+type;		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		String hql2 = "FROM User";
		Query query2 = session.createQuery(hql2);
		List<User> list2 = query2.list();
		List<User> list3 = new ArrayList<User>();
		for (User user : list2) {
			list3.add(user);
			}
		model.addAttribute("user",user);
		model.addAttribute("list",list);
		return "user/product";	
	
	}
	
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String insert(ModelMap model, @ModelAttribute("s") String s) {
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
		String hql2 = "FROM User";
		Query query2 = session.createQuery(hql2);
		List<User> list2 = query2.list();
		List<User> list3 = new ArrayList<User>();
		for (User user : list2) {
			list3.add(user);
			}
		model.addAttribute("user",list3);
		model.addAttribute("list",listNew);
		return "user/product";
	}
	@RequestMapping("about")
	public String about(ModelMap  model,HttpSession session) {
		model.addAttribute("user",user);
		session.setAttribute("user", user);
		return "user/about";
	}
	@RequestMapping("contact")
	String contact() {
		return "user/contact";
	}
	

	@Autowired
	JavaMailSender mailer;
	@RequestMapping("contact/send")
	public String send(ModelMap model,
			@RequestParam("name") String name,
			 @RequestParam("phone") String phone, 
			 @RequestParam("content") String content) {
		try {
			// Tạo mail
			MimeMessage mail = mailer.createMimeMessage();
			// Sử dụng lớp trợ giúp
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(name, name);
			helper.setTo("n16dccn168@student.ptithcm.edu.vn");
			helper.setReplyTo(name, name);
			helper.setSubject(phone);
			helper.setText(content, true);
			// Gửi mail
			mailer.send(mail);
			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			model.addAttribute("message", "Gửi email thất bại !");
		}
		model.addAttribute("user",user);
		return "user/contact";
	}

	@RequestMapping("detail/{id}")
	public String detail(ModelMap model, @PathVariable("id") Integer id ){
		
		Session session = factory.getCurrentSession();		
		Product product = (Product) session.get(Product.class, id);
		model.addAttribute("item", product);
		User user = (User) session.get(User.class, id);
		model.addAttribute("user",user);
		return "user/detail";
	}
	@RequestMapping("cart/{id}")
	public String cartId(ModelMap model, @PathVariable("id") Integer id) {

		Session session = factory.getCurrentSession();
		product = (Product) session.get(Product.class, id);
		model.addAttribute("item", product);

		return "user/cart";
	}
	Product product = new Product();
	@RequestMapping("buy")
	public String send(ModelMap model,
			@RequestParam("name") String name, 
			@RequestParam("phone") String phone,
			@RequestParam("address") String address,
			@RequestParam("quantity") Float quantity) {
			
		Bill bill = new Bill();
		bill.setName(name);
		bill.setPhone(phone);
		bill.setAddress(address);
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		formatter.format(date);
		bill.setDate_order(date);
		
		Bill_detail detail = new Bill_detail();
		detail.setProduct(product);
		detail.setPrice(product.getPrice());		
		detail.setBill(bill);
		detail.setQuantity(quantity);
		bill.setTotal((product.getPrice() - (product.getPrice() * product.getDiscount() ))* quantity);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(bill);
			session.save(detail);
			t.commit();
			model.addAttribute("message", "Mua thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Mua thất bại !");
		} finally {
			session.close();
		}

		return "user/cart";
	}
	@RequestMapping(value = "registration", method = RequestMethod.GET)
	public String registration(ModelMap model) {
		
		model.addAttribute("user", new User());
		return "user/registration";
		
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
	@RequestMapping(value = "registration", method = RequestMethod.POST)
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
			return "user/registration";
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
				return "user/registration";
			}
		}
		 session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
			return "admin/login";
		}catch(Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");			
		}finally {
			session.close();
		}
		 return "user/registration";
	}
	
}
