package br.com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.model.Cliente;

public class ClienteDAOImpl implements ClienteDAO{
	
	private EntityManager em;
	
	//Onbtendo uma instancia da fabrica para uma comunicao com JPA
	public EntityManager getEm(){
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("YagoSchuenckAv1JPU");
		return factory.createEntityManager();
	}
	
	public ClienteDAOImpl(){
		EntityManager _em = getEm();
		this.em = _em;
	}
	
	//O metodo registra um cliente no banco, caso nao tenha um id
	//Ou atualiza os dados do cliente, caso o objeto esteja registrado
	@Override
	public Cliente save(Cliente cliente) throws Exception {
		try{
			em.getTransaction().begin();
			if(cliente.getId() == null){
				em.persist(cliente);
			}
			else{
				if(!em.contains(cliente)){
					if(em.find(Cliente.class, cliente.getId()) == null){
						throw new Exception("Erro ao atualizar o cliente");
					}
				}
				cliente = em.merge(cliente);
			}			
			em.getTransaction().commit();
		}
		finally{
			em.close();
		}
		return cliente;
	}
	
	//Remove um cliente conforme o id passado por parametro
	@Override
	public void remove(Long id) {
		Cliente cliente = em.find(Cliente.class, id);
		
		try{
			em.getTransaction().begin();
			em.remove(cliente);
			em.getTransaction().commit();
		}
		finally{
			em.close();
		}	
	}

	@Override
	public List<Cliente> list() {
		List<Cliente> listClientes = new ArrayList<Cliente>();
		
		Query query = em.createQuery("SELECT c FROM Cliente c");
		
		try{
			listClientes = (List<Cliente>) query.getResultList();
		}
		finally{
			em.close();
		}		
		return listClientes;
	}

	@Override
	public Cliente edit(Long id) {		
		Cliente cliente = null;
		
		try{
			cliente = em.find(Cliente.class, id);
		}
		finally{
			em.close();
		}
		return cliente;
	}	
}
