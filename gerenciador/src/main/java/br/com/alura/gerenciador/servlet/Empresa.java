package br.com.alura.gerenciador.servlet;

import java.util.Date;

public class Empresa {
	
	private String nome;
	private Integer id;
	private Date dataAbertura = new Date();
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getdataAbertura() {
		return dataAbertura;
	}
	public void setdataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}
	
	
	
}
