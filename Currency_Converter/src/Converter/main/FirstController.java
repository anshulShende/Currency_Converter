package Converter.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {
	
	@RequestMapping("/")
	public String showFirstPage() {
		return "main-menu";
	}

	@RequestMapping("/processForm")
	public String createModel(HttpServletRequest request,Model model) throws Exception
	{
		//read request parameter form the html form
		Double  ip  =Double.parseDouble(request.getParameter("ip1"));
		
		
		String fro  = request.getParameter("fromName");
		String to  = request.getParameter("toName");
		
		Double  st = JsonReader.getRate(fro , to);
		
		
		
		
		//create the Result
		double result=ip*st;
		
		
		
		//add Message to the Model
		model.addAttribute("message",result);
		
		return "main-menu" ;
	}
	
}
