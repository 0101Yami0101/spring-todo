package com.in28minutes.springboot.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

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
		Predicate<? super Todo> predecate = todo -> todo.getUsername().equalsIgnoreCase(username) ;
		
		return todos.stream().filter(predecate).toList();
	}
	
	public void addTodo(String username, String description, LocalDate targetDate, boolean done ) {
		Todo Todo = new Todo (++todosCount, username, description, targetDate, done);
		todos.add(Todo);
	}
	
	public void deleteById(int id) {
		Predicate<? super Todo> predecate = todo -> todo.getId() == id;
		todos.removeIf(predecate);
		--todosCount;
	}
	public void updateById(int id) {
		
		todos.get(id).setDescription(""); 
		
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predecate = todo -> todo.getId() == id;
		Todo todo= todos.stream().filter(predecate).findFirst().get();
		return todo;	
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todos.add(todo);
		
	}
	
}
