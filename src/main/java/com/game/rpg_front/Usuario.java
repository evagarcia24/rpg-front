package com.game.rpg_front;
public class Usuario {
	private String username;
	private String rol;
	private String imagen;
	private boolean esAdmin;

	// Constructor para llenar los datos rápido
	public Usuario(String username, String rol, String imagen, boolean esAdmin) {
		this.username = username;
		this.rol = rol;
		this.imagen = imagen;
		this.esAdmin = esAdmin;
	}

	// Getters (Thymeleaf los usa para leer los datos)
	public String getUsername() {
		return username;
	}

	public String getRol() {
		return rol;
	}

	public String getImagen() {
		return imagen;
	}

	public boolean isEsAdmin() {
		return esAdmin;
	}
}