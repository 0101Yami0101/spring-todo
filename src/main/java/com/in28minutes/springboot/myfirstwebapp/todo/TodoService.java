package com.in28minutes.springboot.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Service;

@Component
public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	static {
		todos.add(new Todo(1, "Yami", "Java work",LocalDate.now().plusYears(1), false));
		todos.add(new Todo(2, "Yami", "Devops work",LocalDate.now().plusYears(2), false));
		todos.add(new Todo(3, "Yami", "AWS work",LocalDate.now().plusYears(3), false));
	}
	
	public List<Todo> findByUsername(String username){
		return todos;
	}
	
}
