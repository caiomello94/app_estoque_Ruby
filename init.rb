 require_relative "display/menu"
 require_relative "display/operacao_tela"
 require_relative "core/cadastrar_produto"
 require_relative "core/listar_produtos"
 require_relative "core/retirar_estoque"



 produto = [
  {
    id: Time.now.to_i, # retorna um ID diferente 
    nome: "Mouse Logitech M650",
    descricao: "logitech para escritorio",
    preço: 180,
    quantidade: 4
  }
]
 iniciar_menu(produto)