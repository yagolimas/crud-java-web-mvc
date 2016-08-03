package br.com.dao;

import java.util.List;

import br.com.model.Cliente;

public interface ClienteDAO {
	
	public Cliente save(Cliente cliente) throws Exception;
	
	public void remove(Long id);
	
	public List<Cliente> list();
	
	public Cliente edit(Long id);
}
