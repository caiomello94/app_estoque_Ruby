require 'terminal-table'

def retirar_estoque(produtos)
    limpar_tela

    puts " ==== Escolha um dos produtos abaixo ===="

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Quantidade']
        produtos.each do |row|
         t.add_row [row[:id], row[:nome], row[:quantidade]]
        end
    end 

    limpar_tela   
    puts table

    puts " Digite o ID do produto:"
    id = gets.to_i

    produto = produtos.find{|p| p[:id] == id}
    unless produto 

     limpar_tela
     puts " Produto do ID #{id} não encontrado na lista "
     puts "Deseja digitar o ID novamente? (s/n)"
     opcao = gets.chomp.downcase
        if opcao == "s" || opcao == "sim"
            retirar_estoque(produtos)
        end
        
        limpar_tela
        return
    end 
          limpar_tela
        puts " Digite a quantidade que deseja retirar do estoque do produto: #{(produto[:nome])}, estoque:#{(produto[:quantidade])}"
        quantidade_retirada = gets.to_i
        produto[:quantidade] = produto[:quantidade] - quantidade_retirada
            limpar_tela

        puts "Retirada realizada com sucesso!, seu estoque atual é de: #{(produto[:quantidade])} "
        
end

