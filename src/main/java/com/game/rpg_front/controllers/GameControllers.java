package com.game.rpg_front.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller	
public class GameControllers {

	
	@GetMapping("/") // A completar la pagina de inicio antes del login
	public String index() {
	    return "index";
	}
	

 // 1. Esto sirve para MOSTRAR la página cuando escribes la URL
    @GetMapping("/login")
    public String mostrarLogin() {
        return "login"; // Busca el archivo login.html
    }

    // 2. Esto sirve para RECIBIR los datos cuando pulsas el botón
    @PostMapping("/login")
    public String procesarLogin(@RequestParam String username, @RequestParam String password) {
        
        // Aquí es donde sucede la magia. 
        // Por ahora, solo vamos a decir que si sale bien, te mande al inicio.
        System.out.println("Usuario intentando entrar: " + username);
        
        return "redirect:/home"; 
    }



	@GetMapping("/register")
	public String registro() {
	    return "register";
	}

	@GetMapping("/forgot-password")
	public String forgotPassword() {
	    return "forgot-password";
	}

	@GetMapping("/game")
	public String game(Model model) {
        // Creamos el usuario "de mentira" para que la web cargue
//        Usuario user = new Usuario("Geralt_De_Rivia", "Guerrero", null, true);
        
        // Enviamos los datos al HTML
//        model.addAttribute("usuario", user);
//        
//        // Enviamos listas vacías para que los bucles (th:each) no den error
//        model.addAttribute("criaturas", new ArrayList<>());
//        model.addAttribute("misRuns", new ArrayList<>());
//        model.addAttribute("eventos", new ArrayList<>());
//        
//        // Variables de estado mínimas
//        model.addAttribute("progreso", 0);
//        model.addAttribute("esPlayback", false);
//        model.addAttribute("derrota", false);
//        model.addAttribute("combateTerminado", true);
//
        return "game";
	}

	@GetMapping("/create-creature")
	public String createCreature() {
	    return "create-creature";
	}	
}