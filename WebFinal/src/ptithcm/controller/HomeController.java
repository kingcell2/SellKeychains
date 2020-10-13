package ptithcm.controller;


import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;


@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("index")
	public String index(ModelMap model) {
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
		
		
		return "index";
	}
	
	
}
