def cadastrar_produto(produtos)

    limpar_tela
    puts "Digite o produto a ser cadastrado: "
    nome = gets.chomp
    limpar_tela
    
    puts "Digite a descrição do produto: (#{nome}):"
    descricao = gets.chomp
    limpar_tela

    puts "Digite o preço do produto: (#{nome}):"
    preço = gets.to_f
    limpar_tela

    puts "Digite a quantidade em estoque do produto:(#{nome}):"
    quantidade_estoque = gets.to_i
    limpar_tela

        # array de produtos com hash e dados dentro do hash.
        produtos << {
            id: Time.now.to_i, # retorna um ID diferente 
            nome: nome, 
            descricao: descricao,
            preço: preço,
            quantidade: quantidade_estoque
        }

end