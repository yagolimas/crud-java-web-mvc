package br.com.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.model.Cliente;
import br.com.model.Pedido;

public class PedidoDAOImpl implements PedidoDAO {
	private EntityManager em;

	public EntityManager getEm() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("YagoSchuenckAv1JPU");
		return factory.createEntityManager();
	}

	public PedidoDAOImpl() {
		EntityManager _em = getEm();
		this.em = _em;
	}

	@Override
	public Pedido save(Pedido pedido) throws Exception {

		try {
			em.getTransaction().begin();
			if (pedido.getId() == null) {
				em.persist(pedido);
			} else {
				if (!em.contains(pedido)) {
					if (em.find(Pedido.class, pedido.getId()) == null) {
						throw new Exception("Erro ao atualizar o pedido");
					}
				}
				pedido = em.merge(pedido);
			}
			em.getTransaction().commit();
		} finally {
			em.close();
		}
		return pedido;
	}

	public Cliente getCliente(Long id) {
		Cliente cliente = null;
		try {
			cliente = em.find(Cliente.class, id);
		} finally {
			em.close();
		}
		return cliente;
	}
}
