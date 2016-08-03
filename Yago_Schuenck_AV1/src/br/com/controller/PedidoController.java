package br.com.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.dao.PedidoDAOImpl;
import br.com.enums.StatusPedido;
import br.com.model.Cliente;
import br.com.model.Pedido;

@Controller
public class PedidoController {
	
	@RequestMapping("novo-pedido")
    public ModelAndView form(Long id) {
		PedidoDAOImpl dao = new PedidoDAOImpl();
		Cliente cliente = dao.getCliente(id);
		ModelAndView mv = new ModelAndView("pedido/formulario-pedido");
		mv.addObject("clientes", cliente);
		mv.addObject("status", Arrays.asList(StatusPedido.values()));
        return mv;
    }
	
	@RequestMapping("salva-pedido")
	public String save(Pedido pedido){
				
		PedidoDAOImpl dao = new PedidoDAOImpl();		
		
		try{
			dao.save(pedido);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "forward:lista-cliente";
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {

	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,false));

	}
}
