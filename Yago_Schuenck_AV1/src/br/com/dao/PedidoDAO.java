package br.com.dao;

import br.com.model.Pedido;

public interface PedidoDAO {
	
	public Pedido save(Pedido pedido) throws Exception;
}
