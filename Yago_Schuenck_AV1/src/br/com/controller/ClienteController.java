package br.com.controller;

import java.util.List;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.dao.ClienteDAOImpl;
import br.com.model.Cliente;

@Controller
public class ClienteController {
	
	@RequestMapping("novo-cliente")
    public String form() {
        return "cliente/formulario-cliente";
    }
	
	
	@RequestMapping("salva-cliente")
	public String save(@Valid Cliente cliente, BindingResult result){
		
		if(result.hasFieldErrors()){
			return "cliente/formulario-cliente";
		}
		
		ClienteDAOImpl dao = new ClienteDAOImpl();
		try{
			dao.save(cliente);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "forward:lista-cliente";
	}
	
	@RequestMapping("lista-cliente")
	public ModelAndView list(){
				
		ClienteDAOImpl dao = new ClienteDAOImpl();
		List<Cliente> listClientes = (List<Cliente>) dao.list();
		ModelAndView mv = new ModelAndView("cliente/lista-cliente");
		mv.addObject("clientes", listClientes);
		return mv;		
	}
	
	@RequestMapping("remove-cliente")
	public String remove(Long id){
		ClienteDAOImpl dao = new ClienteDAOImpl();
		dao.remove(id);
		return "forward:lista-cliente";
	}
	
	@RequestMapping("edita-cliente")
	public ModelAndView edit(Long id){
		
		ClienteDAOImpl dao = new ClienteDAOImpl();
		Cliente cliente = dao.edit(id);
		ModelAndView mv = new ModelAndView("cliente/formulario-cliente");
		mv.addObject("clientes", cliente);
		return mv;
	}
}
