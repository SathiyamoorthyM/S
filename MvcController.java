package net.codejava;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/register")
	public String showForm(Model model) {
		User user = new User();
		
		model.addAttribute("user", user);

		return "register_form";
	}

	@PostMapping("/submit")
	public String submitForm(@ModelAttribute("user") User user) {
		Connection c = null;
	      PreparedStatement ps = null;
	      try {
	         Class.forName("org.postgresql.Driver");
	         c = DriverManager
	            .getConnection("jdbc:postgresql://localhost:5432/javadb",
	            "postgres","1234");
	         System.out.println("Opened database successfully");
	         c.setAutoCommit(false);
ps = c.prepareStatement("insert into stu_info values (?,?,?,?,?,?,?)");
ps.setString(1, user.getName());
ps.setString(2, user.getEmail());
ps.setString(3, user.getGender());
ps.setString(4, user.getPassword());
ps.setString(5, user.getNote());
ps.setString(6, user.getBirthday());
ps.setString(7,"N/A");

ps.executeUpdate();
	     
	         c.commit();
	         c.close();
	      } catch (Exception e) {
	         System.err.println( "Exception has occured so please check" +e);
	 
	      }
	      System.out.println("Records created successfully");
		
		return "register_success";
	}
}
