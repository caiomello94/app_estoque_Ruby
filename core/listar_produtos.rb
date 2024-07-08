require 'terminal-table'

def listar_produtos(produtos)
    puts " ==== Listar produtos ===="

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
        produtos.each do |row|
         t.add_row [row[:id], row[:nome], row[:descricao], row[:preço], row[:quantidade]]
        end
    end 

    limpar_tela   
    puts table

    puts " Aperte Enter para continuar... "
    gets
    limpar_tela
end

