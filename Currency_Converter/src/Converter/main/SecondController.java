package Converter.main;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.json.JSONException;
import org.json.JSONObject;

@Controller
public class SecondController {

	@RequestMapping("showValues")
	public String fetch(HttpServletRequest request,Model model) throws Exception
	{
		//read request parameter form the html form
		String c=request.getParameter("ccode");
		String result = "";
		String result2 = "";
		String ct = "";
		
		
		Map<String,Double> val = new HashMap<>();
		
		JsonReader jr = new JsonReader();
		JSONObject dt = jr.readJsonFromUrl("https://api.exchangeratesapi.io/latest?base=USD");
		JSONObject rates = dt.getJSONObject("rates");
		
		Iterator<String> city = rates.keys();
		
		while(city.hasNext()) {
			
			ct = city.next();
//			result = result + ct+" ";
//			result2 = result2 +" "+rates.getDouble(ct);
			
			val.put(ct, rates.getDouble(ct));
			
		}
		
//		city = rates.keys();
//		
//		while(city.hasNext()) {
//			
////			result = result + (String)city.next()+" ";
//			result2 = result2 +" "+rates.getDouble(city.next());
//			
//			
//		}
		
		
		
//		for (int i = 0; i < rates.length(); ++i) {
//		    JSONObject rec = rates.getJSONObject(i);
//		    Double id = rec.getDouble("");
//		    String loc = rec.getString("loc");
//		    
//		}
		
		//add Message to the Model
		model.addAttribute("jso",val);
//		model.addAttribute("jso2",result2);
		return "main-menu" ;
	}	
}
