package com.codingdojo.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.models.Item;

@Controller
public class ItemController {
	
	@RequestMapping("/")
    public String displayIndex(Model model) {
		ArrayList<Item> fruits = new ArrayList<Item>();
        fruits.add(new Item("Kiwi", 1.50));
        fruits.add(new Item("Mango", 2.00));
        fruits.add(new Item("Bayas de Goji", 4.00));
        fruits.add(new Item("Guayava", 0.75));
        
        fruits.add(new Item("Banana", 0.35));
        fruits.add(new Item("Fresa", 1.55));
        fruits.add(new Item("Pera", 3.85));
        fruits.add(new Item("Naranja", 2.20));
        
        model.addAttribute( "fruits", fruits );
        
        return "index.jsp";
	}

}