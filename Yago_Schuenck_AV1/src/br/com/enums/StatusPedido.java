package br.com.enums;

public enum StatusPedido {
	PEDENTE("Pedente"),
	APROVADO("Aprovado"),
	ENVIADO("Enviado"),
	RECEBIDO("Recebido");
	
	private String descricao;
	
	StatusPedido(String descricao){
		this.descricao = descricao;
	}
		
	public String getDescricao() {
		return this.descricao;
	}
}
