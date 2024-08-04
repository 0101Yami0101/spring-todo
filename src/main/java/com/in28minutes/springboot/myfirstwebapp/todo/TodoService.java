package com.in28minutes.springboot.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Service;

@Component
public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	private static int todosCount= 0;
	static {
		todos.add(new Todo(++todosCount, "Yami", "Java work",LocalDate.now().plusYears(1), false));
		todos.add(new Todo(++todosCount, "Yami", "Devops work",LocalDate.now().plusYears(2), false));
		todos.add(new Todo(++todosCount, "Yami", "AWS work",LocalDate.now().plusYears(3), false));
	}
	
	public List<Todo> findByUsername(String username){
		return todos;
	}
	
	public void addTodo(String username, String description, LocalDate targetDate, boolean done ) {
		Todo Todo = new Todo (++todosCount, username, description, targetDate, done);
		todos.add(Todo);
	}
	
}
