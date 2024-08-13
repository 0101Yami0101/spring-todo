package com.in28minutes.springboot.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import jakarta.validation.Valid;


@Controller
@SessionAttributes("name")
public class TodoControllerJPA {
	
	public TodoControllerJPA(TodoService todoService, TodoRepository todoRepository) {
		super();
		//this.todoService = todoService;
		this.todoRepository = todoRepository;
	}
	
	//private TodoService todoService;
	
	private TodoRepository todoRepository;

	@RequestMapping("list-todos")
	public String listAllTodos(ModelMap model) {
		
		String username= getLoggedInUsername();	

		List<Todo> todos= todoRepository.findByUsername(username);
		model.addAttribute("todos", todos);
	
		return "listTodos";
	}
	
	@RequestMapping(value="add-todo", method= RequestMethod.GET)
	public String ShowaddNewTodoPage(ModelMap model) {
		
		String username= getLoggedInUsername();
		Todo todo= new Todo(0, username, "", LocalDate.now(), false);
		model.put("todo", todo);
		return "addTodos";
	}
	
	@RequestMapping(value="add-todo", method= RequestMethod.POST)
	public String addNewTodo( ModelMap model , @Valid Todo todo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "addTodos";
		}
		String username= getLoggedInUsername();
//		todoService.addTodo();
		Todo todo1= new Todo(0,username, todo.getDescription(), todo.getTargetDate(), false);
		todoRepository.save(todo1);
		
		return "redirect:list-todos";
	}
		
	@RequestMapping("delete-todo")
	public String deleteATodo(@RequestParam int id) {
		
		todoRepository.deleteById(id);;	
		return "redirect:list-todos";
	}
	
	@RequestMapping(value="update-todo" , method= RequestMethod.GET)
	public String ShowUpdateATodoPage(@RequestParam int id, ModelMap model) {	
			
		Optional<Todo> todo= todoRepository.findById(id);
		model.addAttribute("todo", todo);
		return "addTodos";
	}
	
	@RequestMapping(value="update-todo", method= RequestMethod.POST)
	public String updateTodo( ModelMap model , @Valid Todo todo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "addTodos";
		}
		String username= getLoggedInUsername();
		todo.setUsername(username);
//		Delete from repo and add a new one with same ID
		
		todoRepository.deleteById(todo.getId());
		todoRepository.save(todo);
		

		
		return "redirect:list-todos";
	}
	
	public String getLoggedInUsername() {
	    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    	
	    	return authentication.getName();
	}
	    
	
	
	
}
