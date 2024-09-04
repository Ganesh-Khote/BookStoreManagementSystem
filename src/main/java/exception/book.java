package exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class book {

	@ExceptionHandler(value=Exception.class)
	public String handleException(Exception e,Model m) {
		m.addAttribute("error",e.getMessage());
		return "Errorpage";
	}
}
