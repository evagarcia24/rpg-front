package com.game.rpg_front.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.game.rpg_front.Usuario;

@Controller	
public class GameControllers {
	@GetMapping("/login")
	public String login() {
	    return "login";
	}

	@GetMapping("/registro")
	public String registro() {
	    return "registro";
	}

	@GetMapping("/forgot-password")
	public String forgotPassword() {
	    return "forgot-password";
	}

	@GetMapping("/game")
	public String game(Model model) {
        // Creamos el usuario "de mentira" para que la web cargue
        Usuario user = new Usuario("Geralt_De_Rivia", "Guerrero", null, true);
        
        // Enviamos los datos al HTML
        model.addAttribute("usuario", user);
        
        // Enviamos listas vacías para que los bucles (th:each) no den error
        model.addAttribute("criaturas", new ArrayList<>());
        model.addAttribute("misRuns", new ArrayList<>());
        model.addAttribute("eventos", new ArrayList<>());
        
        // Variables de estado mínimas
        model.addAttribute("progreso", 0);
        model.addAttribute("esPlayback", false);
        model.addAttribute("derrota", false);
        model.addAttribute("combateTerminado", true);

        return "game";
	}

	@GetMapping("/create-creature")
	public String createCreature() {
	    return "create-creature";
	}	
}