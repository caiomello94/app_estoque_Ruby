def iniciar_menu(produtos = [])
    loop do
        puts "======== Escolha uma das opcões abaixo: ======== "
        puts " 1 -- Cadastro de produtos"
        puts " 2 -- Lista de produtos"
        puts " 3 -- Retirada do Estoque"
        puts " 4 -- Sair "

        opcao = gets.to_i
        
        case opcao
        when 1
            cadastrar_produto(produtos)
        when 2 
            listar_produtos(produtos)
        when 3
            retirar_estoque(produtos)
        when 4
            limpar_tela
            exit
        else 
            mensagem "Opção inválida!"
        end
    end
end